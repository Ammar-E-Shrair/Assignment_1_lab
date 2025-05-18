--Start prooject Galactic Rentals
--1\DDL Commands..
--1.1\Creating rental_tracking DataBase..
--In adding the DataBase you should check if it existing 
CREATE DATABASE IF NOT EXISTS rental_tracking;
--1.2\use the command to enter in the DataBase
USE rental_tracking;
--1.3\ Creating rental_data Table (with necessary constraints)..
--In adding the Table you should check if it existing 
CREATE TABLE IF NOT EXISTS rental_data(
	rental_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(50) NOT NULL,
    costume VARCHAR(50) NOT NULL,
    rent_date DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    return_date DATETIME,
    daily_rent FLOAT NOT NULL CHECK (daily_rent>0),
    insertion_date DATETIME DEFAULT CURRENT_TIMESTAMP,
	updating_date DATETIME DEFAULT CURRENT_TIMESTAMP
);
--2\DML Queries.
--2.1\ Add some constraints to the table..
USE rental_tracking;
ALTER TABLE rental_data CHANGE insertion_date insertion_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE rental_data CHANGE 	updating_date updating_date DATETIME  ON UPDATE CURRENT_TIMESTAMP;
ALTER TABLE rental_data CHANGE 	return_date return_date DATETIME   CHECK(return_date>=rent_date) ;
--2.2\ Insert the data into table(csv)
USE rental_tracking;
INSERT INTO rental_data (
    customer_name,
    costume,
    rent_date,
    return_date,
    daily_rent
)VALUES(
    "Alice Johnson",
    "Imperial Officer",
    "2025-04-01 10:00:00",
    "2025-04-03 15:30:00",
    25
    );
INSERT INTO rental_data (
    customer_name,
    costume,
    rent_date,
    return_date,
    daily_rent
)VALUES(
    "Bob Smith",
    "Galaxy Explorer",
    "2025-04-02 09:15:00",
    "2025-04-05 11:00:00",
    30
    );    
INSERT INTO rental_data (
    customer_name,
    costume,
    rent_date,
    return_date,
    daily_rent
)VALUES(
    "Carol Lee",
    "Time Traveler",
    "2025-04-05 14:45:00",
    "2025-04-06 16:00:00",
    20
    );
    INSERT INTO rental_data (
    customer_name,
    costume,
    rent_date,
    return_date,
    daily_rent
)VALUES(
    "Dave Martinez",
    "Robot Droid",
    "2025-04-07 13:00:00",
    "2025-04-12 13:00:00",
    28.5
    );
    INSERT INTO rental_data (
    customer_name,
    costume,
    rent_date,
    return_date,
    daily_rent
)VALUES(
    "Eva Wang",
    "Alien Monarch",
    "2025-04-10 12:10:00",
    "2025-04-11 18:20:00",
    25
    );
    INSERT INTO rental_data (
    customer_name,
    costume,
    rent_date,
    return_date,
    daily_rent
)VALUES(
    "Frank Davis",
    "Imperial Officer",
    "2025-04-12 08:00:00",
    "2025-04-15 9:00:00",
    25
    );
    INSERT INTO rental_data (
    customer_name,
    costume,
    rent_date,
    return_date,
    daily_rent
)VALUES(
    "Grace Kim",
    "Galaxy Explorer",
    "2025-04-15 10:20:00",
    "2025-04-17 12:35:00",
    30
    );
    INSERT INTO rental_data (
    customer_name,
    costume,
    rent_date,
    return_date,
    daily_rent
)VALUES(
    "Henry Brown",
    "Robot Droid",
    "2025-04-18 11:00:00",
    "2025-04-19 14:15:00",
    28.5
    );
    INSERT INTO rental_data (
    customer_name,
    costume,
    rent_date,
    return_date,
    daily_rent
)VALUES(
    "Isabel Clark",
    "Time Traveler",
    "2025-04-20 09:30:00",
    "2025-04-23 10:00:00",
    20
    );
    INSERT INTO rental_data (
    customer_name,
    costume,
    rent_date,
    daily_rent
)VALUES(
    "John Doe",
    "Alien Monarch",
    "2025-04-22 14:00:00",
    22
    );