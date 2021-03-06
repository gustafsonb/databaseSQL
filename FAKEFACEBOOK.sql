-- TABLE DESIGN --

CREATE TABLE USERS(
	ID integer PRIMARY KEY AUTOINCREMENT,
	USER_NAME text,
	ADDRESS text,
	JOIN_DATE integer,
	ENTERED DATETIME DEFAULT CURRENT_TIMESTAMP);

CREATE TABLE STATUS_UPDATES(
	ID integer PRIMARY KEY AUTOINCREMENT,
	ID_USERS integer,
	USER_STATUS text,
	ENTERED DATETIME DEFAULT CURRENT_TIMESTAMP);

CREATE TABLE GROUPS(
	ID integer PRIMARY KEY AUTOINCREMENT,
	ID_USERS integer,
	GROUP_NAME text,
	PUBLIC_GROUP text,
	ENTERED DATETIME DEFAULT CURRENT_TIMESTAMP);

CREATE TABLE LINK_USER_GROUP(
	ID integer PRIMARY KEY AUTOINCREMENT,
	ID_USERS integer,
	ID_GROUPS integer,
	ENTERED DATETIME DEFAULT CURRENT_TIMESTAMP);

	
-- TABLE INSERTS --

-- USERS --

INSERT INTO USERS(USER_NAME, ADDRESS, JOIN_DATE)
	VALUES ("Terry", "5678 Wanker Ave, OKC, OK 73149", 20160422);

INSERT INTO USERS(USER_NAME, ADDRESS, JOIN_DATE)
	VALUES ("JD", "345 Redneck Pl, OKC, OK 73149", 20160422);
	
INSERT INTO USERS(USER_NAME, ADDRESS, JOIN_DATE)
	VALUES ("Johnney", "0987 Dofus Ave, OKC, OK 73149", 20160422);	

-- STATUS_UPDATES --

INSERT INTO STATUS_UPDATES(ID_USERS, USER_STATUS)
	VALUES (1, "Shitting");
	
INSERT INTO STATUS_UPDATES(ID_USERS, USER_STATUS)
	VALUES (2, "Eating balls at the Calf Fry!!!");
	
INSERT INTO STATUS_UPDATES(ID_USERS, USER_STATUS)
	VALUES (3, "Knitting");
	
-- GROUPS --

INSERT INTO GROUPS(ID_USERS, GROUP_NAME, PUBLIC_GROUP)
	VALUES (1, "Asshole Weekly", "Yes");
	
INSERT INTO GROUPS(ID_USERS, GROUP_NAME, PUBLIC_GROUP)
	VALUES (2, "Fishing", "Yes");
	
INSERT INTO GROUPS(ID_USERS, GROUP_NAME, PUBLIC_GROUP)
	VALUES (3, "Fabric Types", "Yes");
	
-- LINK_USER_GROUP --

INSERT INTO LINK_USER_GROUP(ID_USERS, ID_GROUPS)
	VALUES (1, 1);
	
INSERT INTO LINK_USER_GROUP(ID_USERS, ID_GROUPS)
	VALUES (2, 2);
	
INSERT INTO LINK_USER_GROUP(ID_USERS, ID_GROUPS)
	VALUES (3, 3);
	
-- SELECT STATEMENT --




-- SQLITE COMMAND --
.save FAKEFACEBOOK.db
