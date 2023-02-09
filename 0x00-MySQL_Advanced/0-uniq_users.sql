--we are all unique
--a script that creayes a table users

CREATE TABLE IF NOT EXISTS users (
    id, int NOT NULL AUTOINCREMENT, 
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255),
    PRIMARY KEY (id)
);