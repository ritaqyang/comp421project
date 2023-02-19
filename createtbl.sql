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
    country     CHAR(20),
    association CHAR(40) NOT NULL,
    URL         CHAR(40) NOT NULL,
    group       INTEGER  NOT NULL,
    PRIMARY KEY (country)
);

CREATE TABLE Players
(
    country   CHAR(20),
    shirt_num INTEGER,
    pname     CHAR(40) NOT NULL,
    position  CHAR(20) NOT NULL,
    DOB       DATE     NOT NULL,
    PRIMARY KEY (country, shirt_num),
    FOREIGN KEY (country) REFERENCES Teams
);

CREATE TABLE Coaches
(
    country CHAR(20),
    cname   CHAR(40) NOT NULL,
    DOB     DATE     NOT NULL,
    role    CHAR(20) NOT NULL,
    PRIMARY KEY (country, cname),
    FOREIGN KEY (country) REFERENCES Teams
);

CREATE TABLE Referees
(

)
Referees (rname, year_of_experience, country)
	year_of_experience NOT NULL
	country NOT NULL

Stadiums(sname, location, capacity)
	location NOT NULL
capacity NOT NULL

Games(id, date, time, length, round, stadium, playing_country, opposing_country)
	date NOT NULL
	time NOT NULL
length NOT NULL
round NOT NULL
stadium NOT NULL foreign key referencing stadiums(name)
	playing_country NOT NULL foreign key referencing Teams(country)
	opposing_country NOT NULL foreign key referencing Teams(country)

Goals(id, occurrence, minute, penalty, shirt_num, country)
	Id foreign key referencing Games
	minute NOT NULL
penalty NOT NULL
	shirt_num, country NOT NULL foreign key referencing Players(shirt_num, country)

Refs_game (rname,id, role)
	rname foreign key referencing Referees
	id foreign key referencing Games
role NOT NULL

Performs(pname, id, etime, ltime, position, Rcard, Ycard)
	pname foreign key referencing Players
	id foreign key referencing Games
	etime NOT NULL
	ltime NOT NULL
position NOT NULL
Rcard NOT NULL
	Ycard NOT NULL

