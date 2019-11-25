DROP DATABASE IF EXISTS Employee_Tracker_DB;
CREATE DATABASE Employee_Tracker_DB;
USE Employee_Tracker_DB;

CREATE TABLE _department(
  id INT NOT NULL AUTO_INCREMENT,
  _name VARCHAR(30) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE _role(
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL(9,2) NOT NULL,
    department_id INT(3) ZEROFILL NOT NULL,
    PRIMARY KEY (id)
    );

CREATE TABLE _employee(
	id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT(3) ZEROFILL NOT NULL,
    manager_id INT(3) ZEROFILL,
    PRIMARY KEY (id)
    );
    
    
    
    

    
    
    