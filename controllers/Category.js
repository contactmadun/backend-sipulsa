const Validator = require('fastest-validator');
const v = new Validator();
const { Category } = require('../models');

exports.getDataCategory = async (req, res) => {
    try {
        const data = await Category.findAll();
        res.json(data);
    } catch (error) {
        console.log(error);
    }
}


exports.registerCategory = async (req, res) => {
    const schema = {
        name: 'string'
    }
    const validate = v.validate(req.body, schema);
    if(validate.length){
        return res
        .status(400)
        .json(validate);
    }
    let getDataCategory = await Category.findOne({
        where:{
            name: req.body.name
        }
    });
    if(getDataCategory !=null){
        res.json({message: 'Data sudah ada!'});
    }else{
        try {
            await Category.create({
                name: req.body.name
            });
            res.json({message: 'Data berhasil disimpan'});
        } catch (error) {
            console.log(error);
        }
    }
}

exports.deleteCategory = async (req,res) => {
    const id = req.params.id;
    const selectedCategory = await Category.findByPk(id);
    await Category.destroy({
        where:{
            id: id
        },
        raw: true
    });
    if(!selectedCategory){
        return res.json({message: 'Data tidak ditemukan'});
    }
    await selectedCategory.destroy();
    res.json({message: 'Data berhasil di hapus!'});
}