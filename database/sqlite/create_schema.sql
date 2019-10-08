CREATE TABLE breed (
	id integer primary key,
	name text,
	fci_id int
);

CREATE TABLE dog (
	id integer primary key,
	name text,
	reg_name text,
	date_of_birth date,
	height int,
	chip_id text,
	breed_id int references breed (id)
);

CREATE TABLE person (
	id integer primary key,
	name text,
	is_judge boolean
);

CREATE TABLE team (
	id integer primary key,
	dog_id integer references dog (id),
	person_id integer references person (id)
);

CREATE TABLE competition (
	id integer primary key,
	name text,
	date date
);

CREATE TABLE course (
	id integer primary key,
	name text,
	competition_id integer references competition (id),
	judge_id int references person (id)
);

CREATE TABLE trial (
	course_id int references course (id),
	team_id int references team (id),
	time real,
	course_faults real,
	disqualified boolean
);