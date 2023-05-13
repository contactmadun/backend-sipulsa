const axios = require('axios');
const md5 = require('md5'); 
const { CategoryServer, Srv } = require('../models');

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
        // var dataFix = [];
        for(var i=0; i <= (dataPrepaid.length)-1; i++){
            var statusProduct = dataPrepaid[i]['buyer_product_status'] == true ? 'available' : 'empty';
            // var obj = {};

            // obj['name'] = dataPrepaid[i]['product_name'];
            var name = dataPrepaid[i]['product_name'];
            // obj['note'] = dataPrepaid[i]['desc'];
            var note = dataPrepaid[i]['desc'];
            // obj['code'] = dataPrepaid[i]['buyer_sku_code'];
            var code = dataPrepaid[i]['buyer_sku_code'];
            // obj['type'] = 'prepaid';
            var type = 'prepaid';
            // obj['brand'] = dataPrepaid[i]['brand'];
            var brand = dataPrepaid[i]['brand'];
            // obj['price'] = dataPrepaid[i]['price'];
            var price = dataPrepaid[i]['price'];
            // obj['multi'] = dataPrepaid[i]['multi'];
            // obj['status'] = dataPrepaid[i]['seller_product_status'] == true ? statusProduct : 'empty';
            var status = dataPrepaid[i]['seller_product_status'] == true ? statusProduct : 'empty';
            // obj['category'] = dataPrepaid[i]['category'];
            var category = dataPrepaid[i]['category'];
            // dataFix.push(obj);

            let checkData = await Srv.findOne({where: {code:code}});
            if(!checkData){
                await Srv.create({
                    type: type,
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
            let checkCategory = await CategoryServer.findOne({where:{code: brand}});
            if(!checkCategory){
                await CategoryServer.create({
                    code: brand,
                    name: brand,
                    real: category,
                    order: 'prepaid'
                });
            }
        }
        res.json({message: 'Data berhasil ditambahkan dan di update'});
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