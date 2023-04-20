const { registerCategory, getDataCategory, deleteCategory } = require('../controllers/Category');

var express = require('express');
var router = express.Router();

router.get('/', getDataCategory);
router.post('/', registerCategory);
router.delete('/:id', deleteCategory);

module.exports = router;