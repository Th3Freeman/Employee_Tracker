var mysql = require("mysql");
var inquirer = require("inquirer");
var consoletable = require("console.table");

// creates the connection information for the sql database
var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "rootroot",
  database: "Employee_Tracker_DB"
});