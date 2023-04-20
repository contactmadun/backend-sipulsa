const { registerBrand, getDataBrand, deleteBrand } = require('../controllers/Brand');

var express = require('express');
var router = express.Router();

router.get('/', getDataBrand);
router.post('/', registerBrand);
router.delete('/:id', deleteBrand);

module.exports = router;