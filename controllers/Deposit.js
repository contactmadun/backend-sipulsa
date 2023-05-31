const { Deposit, Mutation, Users } = require('../models');
const Validator = require('fastest-validator');
const { token } = require('morgan');
const v = new Validator();

// const getPagination = (page, size) =>{
//     const limit = size ? +size : 3;
//     const offset = page ? page * limit : 0;

//     return {limit, offset};
// };

// const getPagingData = (data, page, limit) =>{
//     const { count: totalItems, rows: deposit } = data;
//     const currentPage = page ? +page : 0;
//     const totalPages = Math.ceil(totalItems / limit);

//     return { totalItems, deposit, totalPages, currentPage};
// }

// exports.getDataPagination = async (req, res) =>{
//     try {
//         const {page, size, title} = req.query;
//         var condition = title ? { title: {[Op.like]: `%${title}%`}} : null;

//         const {limit, offset} = getPagination(page, size);
//         const response = await Deposit.findAndCountAll({where: condition, limit, offset})
//         const data = getPagingData(response, page, limit);
//         res.json(data);
//     } catch (error) {
//         res.status(500).send({message: error.message || 'Terjadi kesalahan'});
//     }
// }

exports.getDataDepositAll = async (req, res) => {
    try {
        const data = await Deposit.findAll({
            order: [['createdAt', 'DESC']],
            limit: 7
        });
        res.json(data);
    } catch (error) {
        console.log(error);
    }
}

exports.getDataDepositByEmail = async (req, res) => {
    try {
        const data = await Deposit.findAll({
            where:{
                user: req.body.email
            }
        });
        res.json(data);
    } catch (error) {
        console.log(error);
    }
}

exports.userDeposit = async (req, res) => {
    const char = '123456789abcdefghijklmnopqrstuvwxyz';
        let token = '';
        for(let i=0; i<8; i++){
            token += char[Math.floor(Math.random() * char.length)];
        };
    try {
        await Deposit.create({
            refId: token,
            user: req.body.email,
            storeName: req.body.store,
            method: req.body.method,
            amount: req.body.amount
        });
        res.json({message: 'Deposit berhasil dikirim'});
    } catch (error) {
        console.log(error);
    }
}

exports.updateStatus = async (req, res) => {
    try {
        const id = req.body.id;
        const status = req.body.status;
        const data = await Deposit.findOne({
            where:{
                id: id
            }
        });
        const email = data.user;
        const user = await Users.findOne({where:{email: email}})
        const amountUser = user.balance;
        const amount = data.amount;
        const balanceTotal = amount+amountUser;
        console.log(user);
        console.log(amount);
        console.log(amountUser);
        console.log(balanceTotal);
        if(data){
            if(status === 'sukses'){
                await Users.update({
                    balance: balanceTotal},
                    {where:{
                        email: email}})
                await Deposit.update({
                    status: status},
                    {where:{id: id}})
                await Mutation.create({
                    user: email,
                    type: "+",
                    amount: amount,
                    note: "deposit cash",
                    category: "deposit"
                });
                res.json({message: "Deposit telah ditambahkan ke akun"}); 
            }else{
                await Deposit.update({
                    status: status},
                    {where:{id: id}});
                res.json({message: "Deposit gagal"});
            }
        }else{
            res.json({message: "Data tidak ditemukan"});
        }
    } catch (error) {
        console.log(error);
    }
}