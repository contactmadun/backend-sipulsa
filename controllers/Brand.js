const Validator = require('fastest-validator');
const v = new Validator();
const { Brand } = require('../models');
// var os = require('os');

exports.getDataBrand = async (req, res) => {
    try {
        // check IP Addres local development
        // var networkInterfaces = os.networkInterfaces();
        // const data = req.socket.remoteAddress;
        // res.send(networkInterfaces);
        const data = await Brand.findAll();
        res.json(data);
    } catch (error) {
        console.log(error);
    }
}


exports.registerBrand = async (req, res) => {
    const schema = {
        name: 'string'
    }
    const validate = v.validate(req.body, schema);
    if(validate.length){
        return res
        .status(400)
        .json(validate);
    }
    let getDataBrand = await Brand.findOne({
        where:{
            name: req.body.name
        }
    });
    if(getDataBrand !=null){
        res.json({message: 'Data sudah ada!'});
    }else{
        try {
            await Brand.create({
                name: req.body.name
            });
            res.json({message: 'Data berhasil disimpan'});
        } catch (error) {
            console.log(error);
        }
    }
}

exports.deleteBrand = async (req,res) => {
    const id = req.params.id;
    const selectedBrand = await Brand.findByPk(id);
    await Brand.destroy({
        where:{
            id: id
        },
        raw: true
    });
    if(!selectedBrand){
        return res.json({message: 'Data tidak ditemukan'});
    }
    await selectedBrand.destroy();
    res.json({message: 'Data berhasil di hapus!'});
}