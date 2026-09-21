CREATE TABLE Karten (
    card_id         INT UNIQUE PRIMARY KEY NOT NULL,
    card_name  VARCHAR(50),
    card_type   VARCHAR(3),
    card_EXP         INT,
    card_TIM         INT,
    card_COF         INT,
    card_ACC         INT,
    card_Descr       VARCHAR(255)
);

CREATE TABLE Spieler (
    player_id      INT UNIQUE PRIMARY KEY NOT NULL,
    player_name    VARCHAR(50)
 );


CREATE TABLE Session (
    sess_id   INT UNIQUE PRIMARY KEY NOT NULL,
    sess_pl1    INT ,
    sess_pl2    INT ,
    sess_pin  INT,
    sess_status  INT
 );

 CREATE TABLE Decks (
    player_id         INT ,
    card_id         INT 
 );

 CREATE TABLE TempDecksStechen (
    sess_id       INT ,
    card_id             INT ,
    player_id             INT ,
    PosInStack      INT
 );

 INSERT INTO Karten (card_id, card_name, card_type, card_EXP, card_TIM, card_COF, card_ACC, card_Descr) VALUES 
    (1, "Herr Ramb", "SOC", 25, 50, 75, 100, "Kennt Gott" ),
    (2, "Herr Knecht", "NAW", 100, 75, 0, 90, "Kann nix" ),
    (3, "Herr Q", "POL", 80, 40, 25, 10, "Fährt E-Auto" );

INSERT INTO Spieler (player_id, player_name) VALUES 
    (1, "Paul" ),
    (2, "Carla");

INSERT INTO Decks (player_id, card_id) VALUES 
    (1, 1),
    (1, 2),
    (1, 3),
    (2, 1),
    (2, 2),
    (2, 3);







 

