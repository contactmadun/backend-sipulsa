var express = require('express');
var router = express.Router();
const Validator = require('fastest-validator');
const v = new Validator();
const { Category } = require('../models');

router.get('/', async (req,res) =>{
    const categorys = await Category.findAll();
    return res.json(categorys);
});

router.get('/:id', async (req,res) =>{
    const id = req.params.id;
    const category = await Category.findByPk(id);
    return res.json(category || {});
});

router.post('/', async (req, res) => {
    const schema = {
        name: 'string'
    }
    const validate = v.validate(req.body, schema);

    if(validate.length){
        return res
        .status(400)
        .json(validate);
    }

    const category = await Category.create(req.body);
    res.json(category); 
      
});

router.put('/:id', async (req, res) => {
    const id = req.params.id;
    let category = await Category.findByPk(id);

    if(!category){
        return res.json({message: 'Kategori tidak ditemukan'});
    }

    const schema = {
        name: 'string|optional'
    }
    const validate = v.validate(req.body, schema);

    if(validate.length){
        return res
        .status(400)
        .json(validate);
    }
    
    category = await category.update(req.body);
    res.json(category); 
});

router.delete('/:id', async(req, res) => {
    const id = req.params.id;
    let category = await Category.findByPk(id);

    if(!category){
        return res.json({message: 'Kategori tidak ditemukan'});
    }

    await category.destroy();
    res.json({
        message: 'Kategori berhasil dihapus'
    })
});

module.exports = router;