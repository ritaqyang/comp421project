-- Include your create table DDL statements in this file.
-- Make sure to terminate each statement with a semicolon (;)

-- LEAVE this statement on. It is required to connect to your database.
CONNECT TO cs421;

-- Remember to put the create table ddls for the tables with foreign key references
--    ONLY AFTER the parent tables has already been created.

-- This is only an example of how you add create table ddls to this file.
--   You may remove it.

CREATE TABLE Teams
(
    country     CHAR(20) NOT NULL,
    association VARCHAR(100) NOT NULL,
    URL         CHAR(80) NOT NULL,
    group       CHAR(1)  NOT NULL,
    PRIMARY KEY (country)
);

CREATE TABLE Players
(
    country   CHAR(20) NOT NULL,
    shirt_num INTEGER NOT NULL,
    pname     CHAR(40) NOT NULL,
    position  CHAR(20) NOT NULL,
    DOB       DATE     NOT NULL,
    PRIMARY KEY (country, shirt_num),
    FOREIGN KEY (country) REFERENCES Teams
);

CREATE TABLE Coaches
(
    country CHAR(20) NOT NULL,
    cname   CHAR(40) NOT NULL,
    DOB     DATE     NOT NULL,
    role    CHAR(20) NOT NULL,
    PRIMARY KEY (country, cname),
    FOREIGN KEY (country) REFERENCES Teams
);

CREATE TABLE Referees
	(rname VARCHAR(40) NOT NULL PRIMARY KEY,
	year_of_experience INT NOT NULL, 
	country VARCHAR(60) NOT NULL);

CREATE TABLE Stadiums
	(sname VARCHAR(40) NOT NULL PRIMARY KEY,
	location VARCHAR(40) NOT NULL,
	capacity INT NOT NULL);

CREATE TABLE Games
	(id INT NOT NULL PRIMARY KEY, /* this is an int right? - H */
	date DATE NOT NULL,
	time TIME NOT NULL, 
	length TIME NOT NULL,
	round INT NOT NULL, 
	stadium VARCHAR(40) NOT NULL,
	playing_country VARCHAR(60) NOT NULL,
	opposing_country VARCHAR(60) NOT NULL,
	FOREIGN KEY (stadium) REFERENCES Stadiums,
	FOREIGN KEY (playing_country) REFERENCES Teams,
	FOREIGN KEY (opposing_country) REFERENCES Teams);

CREATE TABLE Goals 
	(id INT NOT NULL,
	occurrence INT NOT NULL, 
	minute INT NOT NULL,
	penalty VARCHAR(10) NOT NULL, 	
	shirt_num INT,
	country VARCHAR(60),
	PRIMARY KEY (id, occurrence),
	FOREIGN KEY (id) REFERENCES Games);

CREATE TABLE Refs_game
	(rname VARCHAR(40) NOT NULL,
	id INT NOT NULL,
	role VARCHAR(40) NOT NULL,
	PRIMARY KEY (rname, id),
	FOREIGN KEY (rname) REFERENCES Referees,
	FOREIGN KEY (id) REFERENCES Games); 

CREATE TABLE Performs
	(country   CHAR(20) NOT NULL,
    	shirt_num INTEGER NOT NULL,
	id INT NOT NULL,
	etime TIME NOT NULL,
	ltime TIME NOT NULL,
	position VARCHAR(50) NOT NULL,
	Rcard INT NOT NULL,
	Ycard INT NOT NULL,
	PRIMARY KEY (country, shirt_num, id),
	FOREIGN KEY (country, shirt_num) REFERENCES Players,
	FOREIGN KEY (id) REFERENCES Games); 

/* part 2 */
