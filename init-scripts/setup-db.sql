CREATE TABLE Karten (
    KID         INT UNIQUE PRIMARY KEY NOT NULL,
    Kartenname  VARCHAR(50),
    Element     VARCHAR(3),
    EXP         INT,
    TIM         INT,
    COF         INT,
    ACC         INT,
    Descr       VARCHAR(255)
);

CREATE TABLE Spieler (
    SID             INT UNIQUE PRIMARY KEY NOT NULL,
    Benutzername    VARCHAR(50),
 );


CREATE TABLE Session (
    SessionID   INT UNIQUE PRIMARY KEY NOT NULL,
    Spieler1    INT FOREIGN KEY,
    Spieler2    INT FOREIGN KEY,
    SessionPIN  INT,
    Status      INT,
 );

 CREATE TABLE Decks (
    SID             INT FOREIGN KEY,
    KID             INT FOREIGN KEY,
 );

 CREATE TABLE TempDecksStechen (
    SessionID       INT FOREIGN KEY,
    KID             INT FOREIGN KEY,
    SID             INT FOREIGN KEY,
    PosInStack      INT
 );

 INSERT INTO Karten (KID, Kartenname, Element, EXP, TIM, COF, ACC, Descr) VALUES 
    (1, "Herr Ramb", SOC, 25, 50, 75, 100, "Kennt Gott" ),
    (2, "Herr Knecht", NAW, 100, 75, 0, 90, "Kann nix" ),
    (3, "Herr Q", POL, 80, 40, 25, 10, "Fährt E-Auto" );

INSERT INTO Spieler (SID, Benutzername) VALUES 
    (1, "Paul" ),
    (2, "Carla");

INSERT INTO Decks (SID, KID) VALUES 
    (1, 1 ),
    (1, 2),
    (1, 3 ),
    (2, 1),
    (2, 2 ),
    (2, 3);







 

