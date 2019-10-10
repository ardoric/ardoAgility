from flask import Flask, render_template, request, redirect, url_for
import sqlite3

app = Flask(__name__)

def get_conn():
    conn = sqlite3.connect('caogurus.db')
    conn.row_factory = sqlite3.Row
    return conn

@app.route('/')
def hello():
    conn = get_conn()
    c = conn.cursor()
    
    c.execute('SELECT id,name FROM competition')
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


@app.route('/trial/<int:course_id>/<int:team_id>', methods=['GET', 'POST'])
def submit_trial(course_id, team_id):
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
        
        c.close()
        conn.close()
        return redirect(url_for('submit_trial', course_id=course_id, team_id=team_id))

@app.route('/disqualify/<int:course_id>/<int:team_id>', methods=['GET', 'POST'])
def disqualify(course_id, team_id):
    conn = get_conn()
    c = conn.cursor()
    
    c.execute('INSERT OR REPLACE INTO trial (course_id, team_id, time, course_faults, disqualified) VALUES (?,?,0,0,1)', (course_id, team_id) )
    
    conn.commit()
    c.close()
    conn.close()
    return redirect(url_for('submit_trial', course_id=course_id, team_id=team_id))

@app.route('/teams')
def teams():
    conn = get_conn()
    c = conn.cursor()
    
    
    c.close()
    conn.close()
    return render_template('teams.html')
    
