const axios = require('axios');
const md5 = require('md5'); 
const { CategoryServer, Srv, Trx } = require('../models');
const { serviceData } = require('../services/Formatter')
const Digiflazz = require('digiflazz');
const digiflazz = new Digiflazz('vapiseoE7dxW', 'e0549218-906c-57f3-9671-8f599e3bee9f');

exports.connDigiflazz = async (req, res) => {
    try {
        const response = await axios.post('https://api.digiflazz.com/v1/cek-saldo',{
            cmd : 'deposit',
            username : 'vapiseoE7dxW',
            sign : md5('vapiseoE7dxWe0549218-906c-57f3-9671-8f599e3bee9fdepo')
        });
        res.send(response.data);
        // const data = 'Api running normaly';
        // res.json(data);
    } catch (error) {
        console.log(error);
    }
}

exports.getDataPrepaid = async (req, res) => {
    try {
        const response = await axios.post('https://api.digiflazz.com/v1/price-list',{
            cmd : 'prepaid',
            username: 'vapiseoE7dxW',
            sign : md5('vapiseoE7dxWe0549218-906c-57f3-9671-8f599e3bee9fpricelist') 
        });
        //Memasukan data ke dalam DATABASE
        var dataPrepaid = response.data['data'];
        var data = serviceData(dataPrepaid);
        // console.log(data);
        // var dataFix = [];
        for(var i=0; i <= (data.length)-1; i++){
            // var statusProduct = dataPrepaid[i]['buyer_product_status'] == true ? 'available' : 'empty';
            // var obj = {};

            // obj['name'] = dataPrepaid[i]['product_name'];
            // var name = dataPrepaid[i]['product_name'];
            var name = data[i]['name'];
            // obj['note'] = dataPrepaid[i]['desc'];
            // var note = dataPrepaid[i]['desc'];
            var note = data[i]['note'];
            // obj['code'] = dataPrepaid[i]['buyer_sku_code'];
            // var code = dataPrepaid[i]['buyer_sku_code'];
            var code = data[i]['code'];
            // obj['type'] = 'prepaid';
            var type = 'prepaid';
            // obj['brand'] = dataPrepaid[i]['brand'];
            // var brand = dataPrepaid[i]['brand'];
            var brand = data[i]['brand'];
            // obj['price'] = dataPrepaid[i]['price'];
            // var price = dataPrepaid[i]['price'];
            var price = data[i]['price'];
            // obj['multi'] = dataPrepaid[i]['multi'];
            // obj['status'] = dataPrepaid[i]['seller_product_status'] == true ? statusProduct : 'empty';
            // var status = dataPrepaid[i]['seller_product_status'] == true ? statusProduct : 'empty';
            var status = data[i]['status'];
            // obj['otype'] = dataPrepaid[i]['type'] === 'Umum' ? 'pulsa-reguler' : 'pulsa-transfer';
            var otype = data[i]['otype'];
            // obj['category'] = dataPrepaid[i]['category'];
            // var category = dataPrepaid[i]['category'];
            var category = data[i]['category'];
            // dataFix.push(obj);

            let checkData = await Srv.findOne({where: {code:code}});
            if(!checkData){
                await Srv.create({
                    type: type,
                    typeProduct: otype,
                    code: code,
                    name: name,
                    note: note,
                    price: price,
                    status: status,
                    brand: brand,
                    category: category
                });    
            }else{
                await Srv.update({
                    type: type,
                    typeProduct: otype,
                    code: code,
                    name: name,
                    note: note,
                    price: price,
                    status: status,
                    brand: brand,
                    category: category
                    },
                    {where:{code:code}})
            };
            let checkCategory = await CategoryServer.findOne({where:{code: brand, type: otype}});
            if(!checkCategory){
                await CategoryServer.create({
                    code: brand,
                    name: brand,
                    type: otype,
                    real: category,
                    order: 'prepaid'
                });
            }
        }
        // res.json(dataPrepaid);
        res.json({message: 'Data Berhasil Ditambahkan'});
    } catch (error) {
        console.log(error);
    }
}

exports.topUpPrepaid = async (code, target, refId) => {
    try {
        const username = 'vapiseoE7dxW';
        // const sign = 'vapiseoE7dxWe0549218-906c-57f3-9671-8f599e3bee9f'+refId;
        const sign = md5('vapiseoE7dxWe0549218-906c-57f3-9671-8f599e3bee9f'+refId);
        // console.log(sign);
        const response = await axios.post('https://api.digiflazz.com/v1/transaction',{
            username: username,
            buyer_sku_code: code,
            customer_no: target,
            ref_id: refId,
            sign: sign
        });
        return response;
    } catch (error) {
        console.log(error);
    }
}

exports.checkTopUp = async (req, res) =>{
    try {
        const refId = req.body.refId;
        const code = req.body.code;
        const number = req.body.targetNumber;
        const response = await digiflazz.transaksi(code, number, refId);
        await Trx.update({
            status: response.status,
            note: response.message},
            {where:{
                refId: response.ref_id
            }});
        res.json(response)
    } catch (error) {
        console.log(error);
    }
}