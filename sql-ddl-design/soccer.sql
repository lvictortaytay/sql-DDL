DROP DATABASE IF EXISTS soccer_leage;

CREATE DATABASE soccer_leage;

\c soccer_leage

CREATE TABLE teams 
(
    id SERIAL PRIMARY KEY,
    team_name TEXT NOT NULL
);

CREATE TABLE goals
(
    id SERIAL PRIMARY KEY,
    player_name TEXT NOT NULL,
    num goals INTEGER,
    team_id INTEGER REFERENCES teams
);

CREATE TABLE players 
(
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    age INTEGER NOT NULL,
    curr_team_id INTEGER REFERENCES teams
);

CREATE TABLE refs 
(
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    age INTEGER NOT NULL,
    curr_team_id INTEGER REFERENCES teams
);


CREATE TABLE seasons 
(
    id SERIAL PRIMARY KEY,
    year_num INTEGER NOT NULL,
    start_d INTEGER NOT NULL,
    end_d INTEGER NOT NULL
);

INSERT INTO teams (team_name)
VALUES
('canada'),
('united states'),
('barcelona');



INSERT INTO players (first_name,last_name,age,curr_team_id)
VALUES
('lvictor', 'taylor' , 20,2),
('nia' , 'lewis' , 10,3),
('roger' , 'hamlin' , 4,1);

INSERT INTO refs (first_name,last_name,age,curr_team_id)
VALUES 
('jessica' , 'bryant' , 42 , '2'),
('bryan' , 'raymond' , 32 , '3'),
('cody' , 'zachery' , 22 , '1'),
('james' , 'bond' , 72 , '1');