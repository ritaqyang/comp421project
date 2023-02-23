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
    association CHAR(40) NOT NULL,
    URL         CHAR(40) NOT NULL,
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

CREATE TABLE Customers
	(email VARCHAR(30) NOT NULL PRIMARY KEY,
	password VARCHAR(50) NOT NULL);

CREATE TABLE Billing_addresses
	(aid INT NOT NULL PRIMARY KEY,
	address VARCHAR(100) NOT NULL,
    address2 VARCHAR(100) NOT NULL,
	city VARCHAR(30) NOT NULL,
	province VARCHAR(30) NOT NULL,
	country VARCHAR(30) NOT NULL,
	postal_code VARCHAR(6) NOT NULL,
	phone INT NOT NULL,
	name VARCHAR(30) NOT NULL);

CREATE TABLE Stadium_addresses
	(aid INT NOT NULL PRIMARY KEY,
	address VARCHAR(100) NOT NULL,
	city VARCHAR(30) NOT NULL,
	province VARCHAR(30) NOT NULL,
	country VARCHAR(30) NOT NULL,
	postal_code VARCHAR(6) NOT NULL,
	sname VARCHAR(30) NOT NULL);

CREATE TABLE Games_P2
	(gname VARCHAR(30) NOT NULL PRIMARY KEY,
	date DATE NOT NULL,
	time TIME NOT NULL,
	aid INT NOT NULL,
	FOREIGN KEY (aid) REFERENCES Stadium_addresses); 

CREATE TABLE Credit_cards
	(c_num INT NOT NULL PRIMARY KEY,
	cvv INT NOT NULL,
	e_date DATE NOT NULL,
	aid INT NOT NULL,
	FOREIGN KEY (aid) REFERENCES Billing_addresses); 

CREATE TABLE Tickets
	(tid INT NOT NULL PRIMARY KEY,
	section VARCHAR(1) NOT NULL,
	row INT NOT NULL,
	seat INT NOT NULL,
	gname VARCHAR(30) NOT NULL,
	listed_price INT NOT NULL,
	FOREIGN KEY (gname) REFERENCES Games_P2); 


CREATE TABLE Sold_tickets
	(tid INT NOT NULL PRIMARY KEY,
	section VARCHAR(1) NOT NULL,
	row INT NOT NULL,
	seat INT NOT NULL,
	gname VARCHAR(30) NOT NULL,
	listed_price INT NOT NULL,
	sold_price INT NOT NULL,
	sold_date DATE NOT NULL,
	FOREIGN KEY (gname) REFERENCES Games_P2);

CREATE TABLE Purchases
	(tid INT NOT NULL,
	c_num INT NOT NULL,
	email VARCHAR(30) NOT NULL,
	gname VARCHAR(30),
	transaction_id INT NOT NULL,
	t_date DATE NOT NULL,
	t_time TIME NOT NULL,
	PRIMARY KEY (tid, c_num, email),
	FOREIGN KEY (email) REFERENCES Customers,
	FOREIGN KEY (c_num) REFERENCES Credit_cards);


/*
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
*/

Performs(pname, id, etime, ltime, position, Rcard, Ycard)
	pname foreign key referencing Players
	id foreign key referencing Games
	etime NOT NULL
	ltime NOT NULL
position NOT NULL
Rcard NOT NULL
	Ycard NOT NULL

