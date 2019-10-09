from flask import Flask, render_template
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
    
    course = c.execute('SELECT name FROM course where id = ?', (course_id,) ).fetchone()
    startlist = c.execute("""
        SELECT start_order, dog.name dog_name, person.name person_name, trial.time trial_time, trial.course_faults course_faults, trial.disqualified disqualified
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


@app.route('/teams')
def teams():
    conn = get_conn()
    c = conn.cursor()
    
    
    c.close()
    conn.close()
    return render_template('teams.html')
    
