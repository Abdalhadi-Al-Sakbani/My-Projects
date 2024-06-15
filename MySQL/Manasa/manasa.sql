CREATE DATABASE IF NOT EXISTS Mansa;

USE Mansa;

CREATE TABLE IF NOT EXISTS studant(
	studant_id INT UNIQUE AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
--    parent_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(50),
    email VARCHAR(50) NOT NULL,
    password VARCHAR(30) NOT NULL,
    parent_id INT,
    class_id INT,
    teacher_id INT,
    payment_method VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS parent(
	parent_id INT UNIQUE AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    studant_id INT,
    phone VARCHAR(50),
    email VARCHAR(50) NOT NULL,
    password VARCHAR(30) NOT NULL,
    FOREIGN KEY(studant_id) REFERENCES studant(studant_id) ON DELETE CASCADE
);

ALTER TABLE studant 
ADD FOREIGN KEY(parent_id)
REFERENCES parent(parent_id)
ON DELETE SET NULL;

CREATE TABLE IF NOT EXISTS admins(
	admin_id INT UNIQUE AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    salary INT,
    phone VARCHAR(50),
    email VARCHAR(50) NOT NULL,
    password VARCHAR(30) NOT NULL,
    manager_id INT,
    FOREIGN KEY(manager_id) REFERENCES admins(admin_id) ON DELETE SET NULL
);

ALTER TABLE studant
ADD FOREIGN KEY(teacher_id)
REFERENCES admins(admin_id)
ON DELETE SET NULL;

CREATE TABLE IF NOT EXISTS class(
	class_id INT UNIQUE AUTO_INCREMENT PRIMARY KEY,
    class_name VARCHAR(50) NOT NULL,
    lassons_location VARCHAR(100),
    teacher_id INT,
    manager_id INT,
	FOREIGN KEY(teacher_id) REFERENCES admins(admin_id) ON DELETE CASCADE,
	FOREIGN KEY(manager_id) REFERENCES admins(manager_id) ON DELETE SET NULL
);

ALTER TABLE studant
ADD FOREIGN KEY(class_id)
REFERENCES class(class_id)
ON DELETE SET NULL;