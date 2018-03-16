//**********dependecies +++ connection****************//
const mysql = require("mysql");
const inquirer = require("inquirer");
const connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    //your password =>>
    password: "",
    database: "bamazon_DB"
});
//**************show products*************************//
connection.connect(function(err) {
    if (err) throw err;
    connection.query("SELECT * FROM products", function (err, result, fields){
        if (err) throw err;
        console.log(result);
        //prompt function ACTIVATE
        idselect();
    });
})
//*prompt function
function idselect() {
    inquirer.prompt ([{
        name: "idquestion",
        type: "input",
        message: "Type ID number of product desired."
    },
    {
            name: "quantityselect",
            type: "input",
            message: "How many would you like?"
        }
])
.then(function(res) {
    let product = res.idquestion;
    let quantityChosen = res.quantityselect;
    connection.query("SELECT * FROM products WHERE item_id = ?", (product), function(err, ans) {
        let thisProduct = ans[0];
        let stockQuantity = thisProduct.stock_quantity;

        if (stockQuantity < quantityChosen) {
            console.log("We do not have that many in stock!");
            connection.end();
        }
        else {
            console.log("SOLD! NO BACKSIES!");
        }
    })
})
};

//update function



