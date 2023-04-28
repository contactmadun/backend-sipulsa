const { registerProduct, getDataProduct, deleteProduct, getDataProductLimit, getDataProductById, updateProduct } = require('../controllers/Product');

var express = require('express');
var router = express.Router();

router.get('/', getDataProduct);
router.get('/limit', getDataProductLimit);
router.post('/:id', getDataProductById);
router.put('/:id', updateProduct);
router.post('/', registerProduct);
router.delete('/:id', deleteProduct);

module.exports = router;