CONNECT TO cs421;
/* part 2 */
CREATE TABLE Customers
(
    email VARCHAR(100) NOT NULL PRIMARY KEY,
    password VARCHAR(40) NOT NULL
);

CREATE TABLE Billing_addresses
(aid BIGINT NOT NULL PRIMARY KEY,
 address VARCHAR(100) NOT NULL,
 address2 VARCHAR(100) NOT NULL,
 city VARCHAR(100) NOT NULL,
 province VARCHAR(100) NOT NULL,
 country VARCHAR(50) NOT NULL,
 postal_code VARCHAR(20) NOT NULL,
 phone VARCHAR(20) NOT NULL,
 name VARCHAR(30) NOT NULL,
    email VARCHAR(100) NOT NULL,
FOREIGN KEY (email) REFERENCES Customers);


CREATE TABLE Stadium_addresses
(aid BIGINT NOT NULL PRIMARY KEY,
 address VARCHAR(100) NOT NULL,
 city VARCHAR(100) NOT NULL,
 province VARCHAR(100) NOT NULL,
 country VARCHAR(100) NOT NULL);

DROP TABLE Games_P2;

CREATE TABLE Games_P2
(gname VARCHAR(30) NOT NULL PRIMARY KEY,
 date DATE NOT NULL,
 time VARCHAR (30) NOT NULL,
 aid BIGINT NOT NULL,
 FOREIGN KEY (aid) REFERENCES Stadium_addresses);


DROP TABLE Credit_cards;
CREATE TABLE Credit_cards
(
    c_num BIGINT NOT NULL PRIMARY KEY,
    c_type VARCHAR(20) NOT NULL,
    cvv INT NOT NULL,
    expiration_dm VARCHAR(10) NOT NULL,
    carholder_name VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL,
        FOREIGN KEY (email) REFERENCES Customers);

DROP TABLE Tickets;
CREATE TABLE Tickets
(tid VARCHAR(100) NOT NULL PRIMARY KEY,
 section INT NOT NULL,
 row INT NOT NULL,
 seat INT NOT NULL,
 listed_price FLOAT NOT NULL,
 gname VARCHAR(30) NOT NULL,
 FOREIGN KEY (gname) REFERENCES Games_P2);

DROP TABLE Sold_tickets;
CREATE TABLE Sold_tickets
(tid VARCHAR(100) NOT NULL PRIMARY KEY,
 sold_price FLOAT NOT NULL);


DROP TABLE Purchases;
CREATE TABLE Purchases
(
    tid VARCHAR(100) NOT NULL,
    transaction_id VARCHAR(50) NOT NULL,

 t_date DATE,
 t_time VARCHAR(30),
 c_num BIGINT NOT NULL,
 email VARCHAR(30) NOT NULL,
 PRIMARY KEY (tid,email,c_num),
 FOREIGN KEY (tid) REFERENCES Sold_tickets,
 FOREIGN KEY (email) REFERENCES Customers,
 FOREIGN KEY (c_num) REFERENCES Credit_cards);