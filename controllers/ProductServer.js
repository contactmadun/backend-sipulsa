const { Srv } = require('../models');

exports.updatePriceSale = async (req, res) => {
    try {
        const profit = parseInt(req.body.markup); 
        const data = await Srv.findAll({
            where: {
                category: req.body.category
            }
        });
        if(data){
            for(var i=0; i <= (data.length)-1; i++){

                var id = data[i]['id'];
                var priceModal = data[i]['price'];
                var markup = profit;
                var priceSale = priceModal+markup;
                await Srv.update({
                    price_sale: priceSale},
                    {where:{
                        id:id
                    }});
            }
            res.json({message: 'Data berhasil di update'});
        }else{
            res.json({message: 'Data tidak ditemukan'});
        }
    } catch (error) {
        console.log(error);
    }
}