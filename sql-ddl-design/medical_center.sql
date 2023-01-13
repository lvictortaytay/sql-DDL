DROP DATABASE IF EXISTS medical_center;

CREATE DATABASE medical_center;

\c medical_center

CREATE TABLE med_centers 
(
    id SERIAL PRIMARY KEY,
    center_name TEXT NOT NULL
);

CREATE TABLE doctors
(
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    num_patients INTEGER,
    medcent_id  SERIAL REFERENCES med_centers 
);

CREATE TABLE patients 
(
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    age INTEGER NOT NULL,
    sickness TEXT,
    doc_id INTEGER REFERENCES doctors
);

INSERT INTO med_centers (center_name)
VALUES
('mount saniai'),
('memorial west'),
('aventura hospital');



INSERT INTO doctors (first_name,last_name,num_patients,medcent_id)
VALUES
('lvictor', 'taylor' , 20,2),
('nia' , 'lewis' , 10,3),
('roger' , 'hamlin' , 4,1);

INSERT INTO patients (first_name,last_name,age,sickness)
VALUES 
('jessica' , 'bryant' , 42 , 'diabetes'),
('bryan' , 'raymond' , 32 , 'none'),
('cody' , 'zachery' , 22 , 'herpes'),
('james' , 'bond' , 72 , 'heart disease');