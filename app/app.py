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
    return ''


@app.route('/teams')
def teams():
    conn = get_conn()
    c = conn.cursor()
    
    
    c.close()
    conn.close()
    return render_template('teams.html')
    
