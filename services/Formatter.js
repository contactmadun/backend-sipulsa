module.exports.serviceData = (data) => {
    dataFix = [];
    for(var i=0; i <= (data.length)-1; i++){
        var statusProduct = data[i]['buyer_product_status'] == true ? 'available' : 'empty'
        var obj = {}

        var oType = data[i]['category'];
        if(oType === 'Pulsa' && data[i]['type'] === 'Umum'){
            var type = 'pulsa-reguler';
        }else if(oType === 'Pulsa' && data[i]['type'] === 'Pulsa Transfer'){
            var type = 'pulsa-transfer';
        }else if(oType === 'Data'){
            var type = 'paket-data';
        }else if(oType === 'Voucher'){
            var type = 'voucher-data'
        }else if(oType === 'Aktivasi Voucher'){
            var type = 'inject-voucher'
        }else if(oType === 'PLN'){
            var type = 'token-pln'
        }else if(oType === 'Games'){
            var type = 'games'
        }else if(oType == 'E-Money'){
            var type = 'e-wallet'
        }else(
            'belum verifikasi'
        );
        obj['name'] = data[i]['product_name'];
        obj['otype'] = type;
        obj['note'] = data[i]['desc'];
        obj['code'] = data[i]['buyer_sku_code'];
        obj['brand'] = data[i]['brand'];
        obj['price'] = data[i]['price'];
        obj['status']= data[i]['seller_product_status'] == true ? statusProduct : 'empty';
        obj['category'] = data[i]['category'];

        dataFix.push(obj);
    }
    return dataFix;
}