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

// connects to server and begins prompting the user
connection.connect(function (err) {
  if (err) throw err;

  begin();
});

function begin() {
  inquirer
    .prompt({
      name: "initialChoices",
      type: "list",
      message: "Welcome, What would you like to do?",
      choices: ["View Employees", "Add Employee", "Remove Employee", "Update Employee Role", "View Department", "Add Department", "Remove Department", "View All Titles"]
    })
    .then(function (answer) {
      if (answer.initialChoices === "View Employees") {
        // viewEmps();
      }
      else if (answer.initialChoices === "Add Employee") {
        addEmp();
      }
      else if (answer.initialChoices === "Remove Employee") {
        remEmp();
      }
      else if (answer.initialChoices === "Update Employee Role") {
        updEmpRole();
      }
      else if (answer.initialChoices === "View Department") {
        viewDept();
      }
      else if (answer.initialChoices === "Add Department") {
        addDept();
      }
      else if (answer.initialChoices === "Remove Department") {
        remDept();
      }
      else if (answer.initialChoices === "View All Titles") {
        viewRoles();
      }
      else {
        connection.end();
      }
    });
}

console.log(console.table);



