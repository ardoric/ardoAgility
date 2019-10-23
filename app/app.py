from flask import Flask, render_template, request, redirect, url_for, session, abort
import random
import sqlite3
import hashlib
import base64

app = Flask(__name__)

with open('app_secret') as f:
    app.secret_key = f.read()
with open('password') as f:
    le_password = base64.b64decode(f.read().strip())



def get_conn():
    conn = sqlite3.connect('caogurus.db')
    conn.row_factory = sqlite3.Row
    return conn

@app.route('/')
def index():
    conn = get_conn()
    c = conn.cursor()
    
    c.execute('SELECT id,name,date FROM competition ORDER BY date DESC')
    comps = c.fetchall()
    
    c.close()
    conn.close()
    
    return render_template('index.html', competitions=comps)
        
@app.route('/competition/<int:comp_id>')
def competition(comp_id):
    conn = get_conn()
    c = conn.cursor()
    
    comp = c.execute('SELECT name FROM competition WHERE id = ?', (comp_id,) ).fetchone()
    courses = c.execute('SELECT id, name FROM course WHERE competition_id = ?', (comp_id,) ).fetchall()
    
    c.close()
    conn.close()
    return render_template('competition.html', comp=comp, courses=courses)


@app.route('/course/<int:course_id>')
def course(course_id):
    conn = get_conn()
    c = conn.cursor()
    
    course = c.execute('SELECT id, name FROM course where id = ?', (course_id,) ).fetchone()
    startlist = c.execute("""
        SELECT team.id team_id, start_order, dog.name dog_name, person.name person_name, trial.time trial_time, trial.course_faults course_faults, trial.disqualified disqualified
        FROM startlist 
        INNER JOIN team on (team.id = startlist.team_id) 
        INNER JOIN dog on (team.dog_id = dog.id) 
        INNER JOIN person on (team.person_id = person.id)
        LEFT OUTER JOIN trial on (trial.course_id = startlist.course_id AND trial.team_id = startlist.team_id)
        WHERE startlist.course_id = ?
        ORDER BY start_order""", (course_id,) ).fetchall()
    
    c.close()
    conn.close()
    return render_template('course.html', course=course, startlist=startlist)

@app.route('/results/<int:course_id>')
def results(course_id):
    conn = get_conn()
    c = conn.cursor()
    
    course = c.execute('SELECT id, name FROM course where id = ?', (course_id,) ).fetchone()
    startlist = c.execute("""
        SELECT team.id team_id, start_order, dog.name dog_name, person.name person_name, trial.time trial_time, trial.course_faults course_faults, trial.disqualified disqualified
        FROM startlist 
        INNER JOIN team on (team.id = startlist.team_id) 
        INNER JOIN dog on (team.dog_id = dog.id) 
        INNER JOIN person on (team.person_id = person.id)
        LEFT OUTER JOIN trial on (trial.course_id = startlist.course_id AND trial.team_id = startlist.team_id)
        WHERE startlist.course_id = ?
        ORDER BY 
            ifnull(trial.disqualified, 2),
            trial.course_faults,
            trial.time,
            startlist.start_order""", (course_id,) ).fetchall()
    
    c.close()
    conn.close()
    return render_template('results.html', course=course, startlist=startlist)

def next_trial(course_id, team_id, c):
    this_trial = c.execute('SELECT start_order FROM startlist WHERE course_id = ? AND team_id = ?', (course_id, team_id)).fetchone()
    next_trial = c.execute('SELECT team_id FROM startlist WHERE course_id = ? AND start_order > ? ORDER BY start_order', (course_id, this_trial['start_order'])).fetchone()
    if next_trial:
        return next_trial['team_id']
    else:
        return 0

@app.route('/trial/<int:course_id>/<int:team_id>', methods=['GET', 'POST'])
def submit_trial(course_id, team_id):
    if not session.has_key('role') or session['role'] != 'admin':
        abort(403)
    
    if request.method == 'GET':
        conn = get_conn()
        c = conn.cursor()
        
        course = c.execute('SELECT id, name FROM course where id = ?', (course_id,)).fetchone()
        team   = c.execute("""
            SELECT team.id id, dog.name dog_name, person.name person_name 
            FROM team 
            INNER JOIN dog ON (dog.id = team.dog_id)
            INNER JOIN person ON (person.id = team.person_id)
            WHERE team.id = ?""", (team_id,) ).fetchone()

        c.close()
        conn.close()
        return render_template('trial.html', course=course, team=team)
    else:
        if request.form['action'] != 'set_trial':
            raise Exception('incorrect action')
        conn = get_conn()
        c = conn.cursor()
        
        form = request.form
        if int(form['refusals']) >= 3:
            time = 0.0
            course_faults = 0.0
            disqualified = 1
        else:    
            time = float(form['time'])
            course_faults = ( int(form['faults']) + int(form['refusals']) ) * 5.0
            disqualified = 0
        
        c.execute('INSERT OR REPLACE INTO trial (course_id, team_id, time, course_faults, disqualified) VALUES (?,?,?,?,?)', 
            (course_id,
            team_id,
            time,
            course_faults,
            disqualified) )
        
        conn.commit()

        next_team = next_trial(course_id, team_id, c)

        c.close()
        conn.close()
        if next_team > 0:
            return redirect(url_for('submit_trial', course_id=course_id, team_id=next_team))
        else:
            return redirect(url_for('course', course_id=course_id))

@app.route('/disqualify/<int:course_id>/<int:team_id>', methods=['GET', 'POST'])
def disqualify(course_id, team_id):
    if not session.has_key('role') or session['role'] != 'admin':
        abort(403)
    
    conn = get_conn()
    c = conn.cursor()
    
    c.execute('INSERT OR REPLACE INTO trial (course_id, team_id, time, course_faults, disqualified) VALUES (?,?,0,0,1)', (course_id, team_id) )
    
    conn.commit()
    next_team = next_trial(course_id, team_id, c)
    c.close()
    conn.close()
    if next_team > 0:
        return redirect(url_for('submit_trial', course_id=course_id, team_id=team_id))
    else:
        return redirect(url_for('course', course_id=course_id))

@app.route('/sort/<int:course_id>')
def resort(course_id):
    if not session.has_key('role') or session['role'] != 'admin':
        abort(403)
    
    conn = get_conn()
    c = conn.cursor()

    startlist = c.execute('SELECT course_id, team_id FROM startlist WHERE course_id = ?', (course_id,)).fetchall()
    random.shuffle(startlist)
    for (i,s) in enumerate(startlist):
        c.execute('UPDATE startlist SET start_order = ? WHERE course_id = ? AND team_id = ?', (i+1, s['course_id'], s['team_id']) )

    conn.commit()
    c.close()
    conn.close()
    return redirect(url_for('course', course_id=course_id))

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'GET':
        return render_template('login.html')
    elif request.form['action'] == 'login':
        if hashlib.sha256(request.form['password']).digest() == le_password:
            session['role'] = 'admin'
            return redirect(url_for('index'))
        else:
            return render_template('login.html')
    else:
        session.pop('role', None)
        return redirect(url_for('index'))

@app.route('/people')
def people():
    conn = get_conn()
    c = conn.cursor()
    
    ppl_list = c.execute('SELECT name, is_judge FROM person').fetchall()
    
    c.close()
    conn.close()
    return render_template('people.html',people=ppl_list)
    
@app.route('/dogs')
def dogs():
    conn = get_conn()
    c = conn.cursor()
    
    dog_list = c.execute('SELECT name FROM dog').fetchall()
    
    c.close()
    conn.close()
    return render_template('dogs.html',dogs=dog_list)

@app.route('/teams')
def teams():
    conn = get_conn()
    c = conn.cursor()
    
    teams_list = c.execute("""
        SELECT person.name person_name, dog.name dog_name 
        FROM team
        INNER JOIN person on team.person_id = person.id
        INNER JOIN dog ON team.dog_id = dog.id
    """).fetchall()
    
    c.close()
    conn.close()
    return render_template('teams.html', teams=teams_list)
    
