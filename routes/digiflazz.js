const { connDigiflazz } = require('../controllers/Digiflazz');

var express = require('express');
var router = express.Router();

router.get('/', connDigiflazz);
// router.post('/', registerCategory);
// router.delete('/:id', deleteCategory);

module.exports = router;