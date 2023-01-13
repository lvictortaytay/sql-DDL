DROP DATABASE IF EXISTS craigslist;

CREATE DATABASE craigslist;

\c craigslist

CREATE TABLE region 
(
    id SERIAL PRIMARY KEY,
    country TEXT NOT NULL
);

CREATE TABLE users
(
    id SERIAL PRIMARY KEY,
    user_name_ TEXT NOT NULL,
    prefered_region_id TEXT REFERENCES region
);

CREATE TABLE categories 
(
    id SERIAL PRIMARY KEY,
    cat_name TEXT NOT NULL
);

CREATE TABLE post 
(
    id SERIAL PRIMARY KEY,
    user_id_ INTEGER REFERENCES users,
    region_id INTEGER REFERENCES region,
    cat_id INTEGER REFERENCES categories,
    post_text TEXT
);




INSERT INTO region (country)
VALUES
('canada'),
('united states'),
('barcelona');



INSERT INTO users (user_name_,prefered_region_id)
VALUES
('lvictortaylor1',2),
('nialewis11', 3),
('rogerhamlin23' , 1);

INSERT INTO categories (cat_name)
VALUES 
('bikes'),
('basketball'),
('cooking'),
('cars');

INSERT INTO post (user_id_ , region_id , cat_id , post_text)
VALUES 
(1,2,1,'hello yo'),
(1,2,1,'bikes are so cool yo'),
(1,1,3,'i love to cook salmon and you should too yo'),
(3,1,1,'bmx or yamaha? yo');
