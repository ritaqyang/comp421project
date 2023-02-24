CONNECT TO cs421;
/* part 2 */
CREATE TABLE Customers
(
    email VARCHAR(30) NOT NULL PRIMARY KEY,
    password VARCHAR(50) NOT NULL
);

CREATE TABLE Billing_addresses
(aid INT NOT NULL PRIMARY KEY,
 address VARCHAR(100) NOT NULL,
 address2 VARCHAR(100) NOT NULL,
 city VARCHAR(30) NOT NULL,
 province VARCHAR(30) NOT NULL,
 country VARCHAR(30) NOT NULL,
 postal_code VARCHAR(6) NOT NULL,
 phone VARCHAR(20) NOT NULL,
 name VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL,
FOREIGN KEY (email) REFERENCES Customers);


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
