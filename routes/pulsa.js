const { getDataProvider, getDataProviderSelected } = require('../controllers/Pulsa');
var express = require('express');
var router = express.Router();

router.get('/', getDataProvider);
router.post('/', getDataProviderSelected);
module.exports = router;