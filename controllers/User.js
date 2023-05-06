const Validator = require('fastest-validator');
const nodemailer = require('../config/nodemailer.config');
const jwt = require('jsonwebtoken');
const v = new Validator();
const { Users } = require('../models');
const bcrypt = require('bcrypt');
const e = require('express');


exports.getUsers = async (req, res) => {
    try {
        const users = await Users.findAll({
            attributes:['id','name','email','role','createdAt']
        });
        res.json(users);
    } catch (error) {
        console.log(error);
    }
}
exports.registerUsers = async (req, res) => {
    const schema = {
        name: 'string',
        password: 'string',
        email: 'string|unique'
    }
    const validate = v.validate(req.body, schema);
    if(validate.length){
        return res.status(400).json(validate);
    }
    let getUser = await Users.findOne({
        where: {
            email: req.body.email
        }
    });
    if(getUser != null){
        res.json({message: 'Email sudah terdaftar!'});
    }else{
        const char = '123456789';
        let token = '';
        for(let i=0; i<6; i++){
            token += char[Math.floor(Math.random() * char.length)];
        };
        // const token = jwt.sign({email: req.body.email}, process.env.TOKEN_CODE);
        const salt = await bcrypt.genSalt();
        const hashPassword = await bcrypt.hash(req.body.password, salt);
        try {
            await Users.create({
                name: req.body.name,
                email: req.body.email,
                password: hashPassword,
                role: req.body.role,
                balance: req.body.balance,
                confirmationCode: token
            });
            nodemailer.sendConfirmationEmail(
                req.body.name,
                req.body.email,
                token,
            );
            res.json({message: 'Berhasil daftar, silahkan cek email untuk verifikasi'});
        } catch (error) {
            console.log(error);
        }           
    }
}

exports.login = async(req, res) => {
    try {
        const user = await Users.findAll({
            where:{
                email: req.body.email
            } 
        });
        var hash = user[0].password
        let match = await bcrypt.compare(req.body.password, hash);
        if(user[0].status != 'active') return res.status(401).json({message: 'Lakukan verifikasi email terlebih dahulu'});
        if(!match) return res.status(400).json({message: 'Password Salah'});
        const userId = user[0].id;
        const name = user[0].name;
        const email = user[0].email;
        const role = user[0].role;
        const login = 1;
        const accessToken = jwt.sign({userId, name, email, role, login}, process.env.ACCESS_TOKEN_SECRET,{
        expiresIn: '20s'
        });
        const refreshToken = jwt.sign({userId, name, email, role, login}, process.env.REFRESH_TOKEN_SECRET,{
            expiresIn: '1d'
        }); 
        await Users.update({refreshToken: refreshToken},{
            where:{
                id: userId
            }
        });
        res.cookie('refreshToken', refreshToken, {
            httpOnly: true,
            maxAge: 1000 * 60 * 60 * 24 * 365 * 20
        });
        res.json({ accessToken });
    } catch (error) {
        res.status(400).json({message: 'Email tidak ditemukan'});
    }
}

exports.forgotPassword = async (req, res) => {
    try {
        const char = '123456789';
        let token = '';
        for(let i=0; i<6; i++){
            token += char[Math.floor(Math.random() * char.length)];
        };
        let getUser = await Users.findOne({
            where: {
                email: req.body.email
            }
        });
        if(getUser != null){
            await Users.update({
                confirmationCode: token},
                {where: {
                    email: req.body.email
                }});
            nodemailer.sendEmailChangePassword(
                req.body.email,
                token 
            );
            res.json({message: 'Link ubah kata sandi telah dikirim, silahkan cek email'});
        }else{
            res.json({message: 'Email belum terdaftar!'});
        }
    } catch (error) {
        console.log(error);
    }
}

exports.logout = async (req, res) => {
    const refreshToken = req.cookies.refreshToken;
        if(!refreshToken) return res.sendStatus(204);
        const user = await Users.findAll({
            where:{
                refreshToken: refreshToken
            }
        });
        if(!user[0]) return res.sendStatus(204);
        const userId = user[0].id;
        await Users.update({refreshToken: null},{
            where:{
                id: userId
            }
        });
        res.clearCookie('refreshToken');
        return res.sendStatus(200); 
}