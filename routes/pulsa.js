const { getDataProvider, getDataProviderSelected, topUpProduct } = require('../controllers/Pulsa');
var express = require('express');
var router = express.Router();

router.get('/', getDataProvider);
router.post('/', getDataProviderSelected);
router.post('/payment', topUpProduct);
module.exports = router;