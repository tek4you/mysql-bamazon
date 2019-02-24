var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "root",
  database: "bamazon_db"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId);
});

connection.query("SELECT * FROM products", function(err, results){
    if (err) throw(err);
    console.log(results);

})

connection.query('SELECT * FROM products', function(err, result){
  if(err) throw err;
  var productList = result;
  var listChoices = [];
  for(var i = 0; i < productList.length; i++){
      listChoices.push(productList[i].product_name);
      console.log("Item: " + productList[i].product_name + "\t || " + "Price: " + productList[i].price + " \t || " + "Qty in Stock: " + productList[i].stock_quantity);
  }

// Create a "Prompt" with a series of questions.
inquirer
  .prompt([
    // Here we create a basic text prompt.
    {
      type: "list",
      message: "What product would you like to buy?",
      name: 'choice',
      choices: listChoices
    },
    // Here we give the user a list to choose from.
    {
      type: "input",
      message: "How many of that item would you like to buy?",
      name: "purchaseQty"
    }
  ])
  .then(function(inquirerResponse) {
    console.log(inquirerResponse);
    // If the inquirerResponse confirms, we displays the inquirerResponse's username and pokemon from the answers.
    // if (inquirerResponse.confirm) {
    //   console.log("\nWelcome " + inquirerResponse.username);
    //   console.log("Your " + inquirerResponse.pokemon + " is ready for battle!\n");
    // }
    // else {
    //   console.log("\nThat's okay " + inquirerResponse.username + ", come again when you are more sure.\n");
    // }
  })
})