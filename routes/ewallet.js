const { getDataBrandEwallet, getDataEwalletSelected } = require('../controllers/Ewallet');
var express = require('express');
var router = express.Router();

router.get('/', getDataBrandEwallet);
// router.get('/transfer', getDataProviderTransfer);
// router.post('/transfer', getDataProviderSelected)
router.post('/', getDataEwalletSelected);
// router.post('/payment', topUpProduct);

module.exports = router;