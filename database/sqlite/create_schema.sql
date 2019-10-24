CREATE TABLE breed (
	id integer primary key,
	name text,
	fci_id int
);

CREATE TABLE category (
	id integer primary key,
	name text,
	min_height integer,
	max_height integer
);

CREATE TABLE level (
	id integer primary key,
	name text
);

CREATE TABLE dog (
	id integer primary key,
	name text,
	reg_name text,
	date_of_birth date,
	chip_id text,
	breed_id int references breed (id),
	category_id int references category (id)
);

CREATE TABLE person (
	id integer primary key,
	name text,
	is_judge boolean
);

CREATE TABLE team (
	id integer primary key,
	dog_id integer references dog (id),
	person_id integer references person (id),
	level int references level (id)
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
	judge_id int references person (id),
	category_id integer references category (id),
	level integer references level (id)
);

CREATE TABLE startlist (
	course_id integer references course (id),
	team_id integer references team (id),
	start_order integer	
);

CREATE TABLE trial (
	course_id int references course (id),
	team_id int references team (id),
	time real,
	course_faults real,
	disqualified boolean,
	CONSTRAINT unique_trial UNIQUE (course_id, team_id)
);


