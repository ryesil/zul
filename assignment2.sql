DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS contact;
DROP TABLE IF EXISTS [address];

CREATE TABLE employee(id INT, fname VARCHAR(100), lname VARCHAR(100), age INT, hiredate DATE);
INSERT INTO employee 
VALUES (01,'Alan','Palmer', 32, '12/15/2019'),
 (02, 'Susan','Shepard',28, '07/21/2015'),
 (03,'Justin','Ward',43,'08/24/2017'),
 (04,'Alan', 'Smith',30,'06/22/2017'),
 (05,'James', 'Betternot',26,'06/22/17'),
 (06,'Ralph', 'White',44,'06/23/2017'),
 (07,'Leonardo', 'Nimoy',72,'12/14/07'),
 (08,'Janice', 'Rand',61,'07/06/16'),
 (09,'Harry', 'Mudd',65,'7/6/2020'),
 (10,'Hikaru', 'Sulu',58,'3/21/2015'),
 (11,'James','Kirk',59,'1/2/2014'),
 (12,'Leonard', 'McCoy',65,'8/21/2015'),
 (13,'Pavel', 'Chekov',44,'10/15/2014'),
 (14,'Christopher', 'Pike',32,'12/24/2014'),
 (15,'Dart', 'Vader',124,'03/22/15'),
 (16,'Boba', 'Fett',49,'3/22/15'),
 (17,'Luke', 'Skywalker',66,'11/11/19'),
 (18,'Han', 'Solo',73,'02/03/12'),
 (19,'Kylo', 'Ren',34,'6/14//20'),
 (20,'Galen', 'Erso',55,'6/14/20');

CREATE TABLE address(id INT, address1 VARCHAR, address2 VARCHAR, city VARCHAR, [state] VARCHAR, zip VARCHAR(5));
INSERT INTO address
VALUES (01, '1211 Sudan St', 'n/a', 'Mobile', 'AL','36609'),
 (02, '4800 Barkshire Dr', 'n/a', 'Pace', 'FL','32571'),
 (03, '12 Nutmeg Ct', 'n/a', 'Culver City', 'CA' ,'90211'),
 (04,  '2142 Elmwood', 'n/a', 'Johnson City', 'TN' ,'37112'),
 (05, '777 Heavenly Ln', 'Box 13', 'Pike City', 'MN', '50877');


CREATE TABLE contact(id INT, cellphone VARCHAR, email VARCHAR(100));
INSERT INTO contact
VALUES (01, '5121325343', '5125234234', 'apalmer@yachtmail.com'),
(02, '5129739834', '5129847873', 'sshepard@yorkdevtraining.com'),
(03, '6453898502', '6459872345','jsward2007@yahoo.com'),
(04, '8763238756','8763736548', 'alsmith999@gmail.com'),
(05, '8880345966', '8888567987', 'james.betternot@hotmail.com'),
(06, '3322827765', '3328760098', 'ralph.white264@aol.com');

--Create a query that joins (inner) employee and address tables on id and returns fname, lname, age, city, state where fname = Alan
SELECT e.fname 'First Name', e.lname 'Last Name', e.age Age, a.city City, a.[state] [State] FROM employee e
INNER JOIN address a ON e.id = a.id
WHERE e.fname = 'Alan';

--Create a query that joins (inner) employee, address, and contact tables on id and
-- returns fname, lname, age, city, state, email where email  =  james.betternot@hotmail.com

SELECT e.fname 'First Name', e.lname 'Last Name', e.age Age, a.city City, c.email 'Email' FROM employee e
INNER JOIN address a ON e.id = a.id
INNER JOIN contact c ON e.id = c.id AND e.id = c.id
WHERE c.email = 'james.betternot@hotmail.com';


--Update Susan Shepard's cellphone to be 4383991212 using fname and lname in the where clause.
-- You must use the employee table to find the name and the contact table to update the cellphone.

UPDATE contact
SET cellphone = '4383991212' WHERE id = (SELECT id FROM employee WHERE fname = 'Susan' AND lname = 'Shepard');

--Create a query that returns all of Susan's data by name

SELECT * FROM employee e
INNER JOIN address a ON e.id = a.id
INNER JOIN contact c ON e.id = c.id AND e.id = c.id
WHERE e.fname = 'Susan';

