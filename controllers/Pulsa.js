const { CategoryServer, Srv, Users, Trx } = require('../models');
// const { topUpPrepaid } = require('../controllers/Digiflazz');
const axios = require('axios');
const md5 = require('md5'); 

exports.getDataProvider = async (req, res) => {
    try {
        var pulsa = 'Pulsa';
        const data = await CategoryServer.findAll({
            where:{real: pulsa} 
        });
        res.json(data);
    } catch (error) {
       console.log(error);
    }
}

exports.getDataProviderSelected = async (req, res) => {
    try {
        var pulsa = 'Pulsa';
        var provider = req.body.name
        // var provider = req.body.
        const data = await Srv.findAll({
            where:{
                category: pulsa,
                brand: provider
            }
        });
        res.json(data);
    } catch (error) {
        console.log(error);
    }
}

exports.topUpProduct = async (req, res) => {
    try {
        var balanceEnd = req.body.balance - req.body.price;
        var trxType = 'prepaid';
        await Trx.create({
            refId: req.body.refId,
            user: req.body.email,
            name: req.body.name,
            number: req.body.targetNumber,
            price : req.body.price,
            trxType: trxType
        });
        await Users.update({
            balance: balanceEnd},
            {where:{email: req.body.email}});  
        const refId = req.body.refId
        const username = 'vapiseoE7dxW';
        const sign = md5('vapiseoE7dxWe0549218-906c-57f3-9671-8f599e3bee9f'+refId);
        const response = await axios.post('https://api.digiflazz.com/v1/transaction', {
            username: 'vapiseoE7dxW',
            buyer_sku_code: 'PULSAsREGTSEL1',
            customer_no: '082120095353',
            ref_id: 'somed',
            sign: md5('vapiseoE7dxWe0549218-906c-57f3-9671-8f599e3bee9fsomed')
        });
        res.send(response.data);
    } catch (error) {
        console.log(error);
    }
}