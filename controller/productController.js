const mysql = require('../models/index');
const fetch = require("node-fetch");

module.exports = {
    view: async(req, res, next) => {
        try {
          const productId = req.params.productId;
          const produtData = await mysql.products.findOne({
            where: {
                id: productId
            },
            attributes: ['id','name','price']
          });         

          var myHeaders = new fetch.Headers();
          myHeaders.append("apikey", "pd4HHF95yGYgssE2ZV4zFomLjDoTBhsu");

            var requestOptions = {
            method: 'GET',
            redirect: 'follow',
            headers: myHeaders
            };

           let amount = produtData.dataValues.price;
           var currentRate = await fetch(`https://api.apilayer.com/currency_data/convert?to=CAD&from=USD&amount=${amount}`, requestOptions)
            .then(response => response.text())
            .then(result => currentRate = result)
            .catch(error => console.log('error', error));
            console.log(currentRate.result);
            res.status(200).send(currentRate);
        } catch (error) {
            console.log(error);
        }
    }
}