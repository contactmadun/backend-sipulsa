require('dotenv').config();
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var cors = require('cors');
var multer = require('multer');

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var categoryRouter = require('./routes/category');
var brandRouter = require('./routes/brand');
var productRouter = require('./routes/product');
var verifyRouter = require('./routes/verify');
var digiflazzRouter = require('./routes/digiflazz');

var app = express();
const fileStorage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, 'images');
    },
    filename: (req, file, cb) => {
        cb(null, new Date().getTime() + '-' + file.originalname)
    }
})

const fileFilter = (req, file, cb) => {
    if(file.mimetype === 'image/png' || file.mimetype === 'image/jpg' || file.mimetype === 'image/jpeg'){
        cb(null, true);
    }else{
        cb(null, false);
    }

}
app.use('/images', express.static(path.join(__dirname, 'images')));
app.use(multer({storage: fileStorage, fileFilter: fileFilter}).single('image'));
app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
app.use(cors({
    origin: [
        'http://localhost:8080',
        'https://localhost:8080',
        'http://sipulsa.site',
        'https://sipulsa.site'
    ],
    credentials: true,
    exposedHeaders: ['set-cookie']
}));

app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/category', categoryRouter);
app.use('/brand', brandRouter);
app.use('/product', productRouter);
app.use('/verify', verifyRouter);
app.use('/digiflazz', digiflazzRouter);

module.exports = app;
