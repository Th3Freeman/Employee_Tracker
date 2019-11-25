DROP DATABASE IF EXISTS Employee_Tracker_DB;
CREATE DATABASE Employee_Tracker_DB;
USE Employee_Tracker_DB;

CREATE TABLE _department(
  id INT NOT NULL AUTO_INCREMENT,
  _name VARCHAR(30) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE _role(
    id INT(11) NOT NULL AUTO_INCREMENT,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL(9,2) NOT NULL,
    department_id INT(11),
    PRIMARY KEY (id)
    );

CREATE TABLE _employee(
	id INT(11) NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT(11),
    PRIMARY KEY (id)
    );
    
INSERT INTO _employee (first_name, last_name, role_id)
VALUES ("Mark" , "Jacobs", 1), ("Jeffery", "Martinson", 2), ("Agnus", "Purdue", 3);

INSERT INTO _role (title, salary, department_id)
VALUES ("Janitor", 20000, 1), ("CEO",5000000, 2), ("Secretary", 50000, 3);

INSERT INTO _department (_name)
VALUES ("Maintenance"), ("Management"), ("Customer Service");
    
    

    
    
    