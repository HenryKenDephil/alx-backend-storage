--we are all unique
--a script that creayes a table users

CREATE TABLE IF NOT EXISTS users (
    id INT AUTOINCREMENT PRIMARY KEY NOT NULL, 
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255),
);