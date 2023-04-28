const Validator = require('fastest-validator');
const v = new Validator();
const { Product, Category, Brand } = require('../models');

// Category.hasMany(Brand);
// Category.belongsToMany(Brand, {through: 'Product'});

Category.hasOne(Product, {foreignKey: 'id_category'});
Product.belongsTo(Category, {foreignKey: 'id_category'});
Brand.hasOne(Product, {foreignKey: 'id_brand'});
Product.belongsTo(Brand, {foreignKey: 'id_brand'});

exports.getDataProduct = async (req, res) => {
    try {
        const data = await Product.findAll({
            include: {
                all: true,
                nested: true
            }
        });
        res.json(data);
    } catch (error) {
        console.log(error);
    }
}

exports.getDataProductLimit = async (req, res) => {
    try{
        const data = await Product.findAll({
            include:{
                all: true,
                nested: true
            },
            limit: 5
        });
        res.json(data);
    } catch (error){
        console.log(error);
    }
}

exports.getDataProductById = async (req, res) => {
    try {
        const data = await Product.findAll({
            include: {
                all: true,
                nested: true,
            },
            where:{
                id: req.params.id
            }
        });
        res.json(data);
    } catch (error) {
        console.log(error);
    }
}


exports.registerProduct = async (req, res) => {
    const schema = {
        name: 'string'
    }
    const validate = v.validate(req.body, schema);
    if(validate.length){
        return res
        .status(400)
        .json(validate);
    }
    let getDataProduct = await Product.findOne({
        where:{
            name: req.body.name
        }
    });
    if(getDataProduct !=null){
        res.json({message: 'Data sudah ada!'});
    }else{
        const filePath = req.protocol + "://" + req.host + ":3000/" + req.file.path.replace("\\","/");
        try {
            await Product.create({
                name: req.body.name,
                id_category: req.body.categoryId,
                id_brand: req.body.brandId,
                stok: req.body.stok,
                price_1: req.body.price1,
                price_2: req.body.price2,
                description: req.body.description,
                image: filePath
            });
            res.json({message: 'Data berhasil disimpan'});
        } catch (error) {
            console.log(error);
        }
    }
}

exports.updateProduct = async (req, res) => {
    const id = req.params.id;
    try {
        await Product.update({
            name: req.body.name,
            id_category: req.body.categoryId,
            id_brand: req.body.brandId,
            stok: req.body.stok,
            price_1: req.body.price1,
            price_2: req.body.price2,
            description: req.body.description},
            {where: {
                id: id
            }});
        res.json({message: 'Data berhasil diubah'});
    } catch (error) {
        console.log(error);
    }
}

exports.deleteProduct = async (req,res) => {
    const id = req.params.id;
    const selectedProduct = await Product.findByPk(id);
    await Product.destroy({
        where:{
            id: id
        },
        raw: true
    });
    if(!selectedProduct){
        return res.json({message: 'Data tidak ditemukan'});
    }
    await selectedProduct.destroy();
    res.json({message: 'Data berhasil di hapus!'});
}