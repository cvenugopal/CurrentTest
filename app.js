const express = require('express');
const app = express();
const db = require('./models/index');
const port = 4000;

const proController = require('./controller/productController');

app.get('/', function(req, res) {
    res.send("Home Page");
});

app.get('/view/:productId', proController.view);

app.listen(port, () => {
    console.log(`Listening On ${port}`);
});