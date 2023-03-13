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
CREATE TABLE Customers
(
    email VARCHAR(40) NOT NULL PRIMARY KEY,
    password VARCHAR(20) NOT NULL
);

CREATE TABLE Billing_addresses
(
	aid BIGINT NOT NULL PRIMARY KEY,
 	address VARCHAR(50) NOT NULL,
 	address2 VARCHAR(50) NOT NULL,
 	city VARCHAR(30) NOT NULL,
 	province VARCHAR(30) NOT NULL,
 	country VARCHAR(60) NOT NULL,
 	postal_code VARCHAR(20) NOT NULL,
	phone VARCHAR(15) NOT NULL,
 	name VARCHAR(30) NOT NULL,
 	email VARCHAR(40) NOT NULL,
	FOREIGN KEY (email) REFERENCES Customers);


CREATE TABLE Stadium_addresses
(aid BIGINT NOT NULL PRIMARY KEY,
 address VARCHAR(50) NOT NULL,
 city VARCHAR(30) NOT NULL,
 province VARCHAR(30) NOT NULL,
 country VARCHAR(60) NOT NULL);


CREATE TABLE Games_P2
(gname VARCHAR(40) NOT NULL PRIMARY KEY,
 date DATE NOT NULL,
 time VARCHAR (10) NOT NULL,
 aid BIGINT NOT NULL,
 FOREIGN KEY (aid) REFERENCES Stadium_addresses);


CREATE TABLE Credit_cards
(
    c_num BIGINT NOT NULL PRIMARY KEY,
    c_type VARCHAR(25) NOT NULL,
    cvv INT NOT NULL,
    expiration_dm DATE NOT NULL,
    aid BIGINT NOT NULL,
    carholder_name VARCHAR(30) NOT NULL,

        FOREIGN KEY (aid) REFERENCES Billing_addresses);

CREATE TABLE Tickets
(tid BIGINT NOT NULL PRIMARY KEY,
 section INT NOT NULL,
 row INT NOT NULL,
 seat INT NOT NULL,
 listed_price INT NOT NULL,
 gname VARCHAR(40) NOT NULL,
 FOREIGN KEY (gname) REFERENCES Games_P2);

CREATE TABLE Sold_tickets
(tid BIGINT NOT NULL PRIMARY KEY,
 sold_price INT NOT NULL);


CREATE TABLE Purchases
(
    tid BIGINT NOT NULL,
    transaction_id VARCHAR(36) NOT NULL,

 transaction_date DATE,
 transaction_time VARCHAR(10),
 c_num BIGINT NOT NULL,
 email VARCHAR(40) NOT NULL,
 PRIMARY KEY (tid,email,c_num),
 FOREIGN KEY (tid) REFERENCES Sold_tickets,
 FOREIGN KEY (email) REFERENCES Customers,
 FOREIGN KEY (c_num) REFERENCES Credit_cards);
