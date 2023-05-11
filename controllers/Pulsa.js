const { CategoryServer, Srv } = require('../models');

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