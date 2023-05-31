const { updatePriceSale } = require('../controllers/ProductServer');
var express = require('express');
var router = express.Router();

router.post('/', updatePriceSale);
// router.get('/limit', getDataProductLimit);
// router.post('/:id', getDataProductById);
// router.put('/:id', updateProduct);
// router.post('/', registerProduct);
// router.delete('/:id', deleteProduct);

module.exports = router;