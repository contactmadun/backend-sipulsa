const { getDataProvider, getDataProviderSelected, topUpProduct, getDataProviderTransfer } = require('../controllers/Pulsa');
var express = require('express');
var router = express.Router();

router.get('/', getDataProvider);
router.get('/transfer', getDataProviderTransfer);
// router.post('/transfer', getDataProviderSelected)
router.post('/', getDataProviderSelected);
router.post('/payment', topUpProduct);
module.exports = router;