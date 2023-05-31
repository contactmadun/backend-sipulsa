const { CategoryServer, Srv, Users, Trx } = require('../models');
// const { topUpPrepaid } = require('../controllers/Digiflazz');
const axios = require('axios');
const md5 = require('md5');
const Digiflazz = require('digiflazz');
const digiflazz = new Digiflazz('vapiseoE7dxW', 'e0549218-906c-57f3-9671-8f599e3bee9f');

exports.getDataProvider = async (req, res) => {
    try {
        var pulsa = 'Pulsa';
        var type = 'pulsa-reguler'
        const data = await CategoryServer.findAll({
            where:{
                real: pulsa,
                type: type
            } 
        });
        res.json(data);
        // console.log(data);
    } catch (error) {
       console.log(error);
    }
}

exports.getDataProviderTransfer = async (req, res) => {
    try {
        var pulsa = 'Pulsa';
        var type = 'pulsa-transfer'
        const data = await CategoryServer.findAll({
            where:{
                real: pulsa,
                type: type
            } 
        });
        res.json(data);
        // console.log(data);
    } catch (error) {
       console.log(error);
    }
}


exports.getDataProviderSelected = async (req, res) => {
    try {
        var pulsa = req.body.type;
        var provider = req.body.name
        // var provider = req.body.
        const data = await Srv.findAll({
            where:{
                typeProduct: pulsa,
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
            code: req.body.code,
            number: req.body.targetNumber,
            price : req.body.price,
            trxType: trxType
        });
        await Users.update({
            balance: balanceEnd},
            {where:{email: req.body.email}});  
        const refId = req.body.refId;
        const code = req.body.code;
        const number = req.body.targetNumber;
        const response = await digiflazz.transaksi(code, number, refId);
        console.log(response);
        await Trx.update({
            status: response.status,
            note: response.message},
            {where:{
                refId: response.ref_id
            }});
        res.send(response);
    } catch (error) {
        console.log(error);
    }
}