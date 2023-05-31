const { getDataPackageProvider, getPackageProviderSelected, topUpProduct } = require('../controllers/Data');
var express = require('express');
var router = express.Router();

router.get('/', getDataPackageProvider);
// router.get('/transfer', getDataProviderTransfer);
// router.post('/transfer', getDataProviderSelected)
router.post('/', getPackageProviderSelected);
router.post('/payment', topUpProduct);
module.exports = router;