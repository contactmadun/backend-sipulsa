var express = require('express');
var router = express.Router();
const Validator = require('fastest-validator');
const v = new Validator();
const { Category } = require('../models');

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

module.exports = router;