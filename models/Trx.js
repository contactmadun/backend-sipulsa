const { Sequelize, DataTypes } = require("sequelize");

module.exports = (Sequelize, DataTypes) => {
    const Trx = Sequelize.define('Trx', {
         id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            allowNull: false,
            autoIncrement: true
          },
          refId: {
            type: DataTypes.STRING,
            allowNull: false,
          },
          user: {
            type: DataTypes.STRING,
          },
          code: {
            type: DataTypes.STRING
          },
          name: {
            type: DataTypes.STRING
          },
          number: {
            type: DataTypes.STRING
          },
          note: {
            type: DataTypes.STRING
          },
          price: {
            type: DataTypes.INTEGER
          },
          profit:{
            type: DataTypes.INTEGER
          },
          status: {
            type: DataTypes.ENUM('Sukses', 'Pending', 'Gagal')
          },
          refund: {
            type: DataTypes.ENUM('0', '1')
          },
          rCoin:{
            type: DataTypes.INTEGER
          },
          trxType: {
            type: DataTypes.ENUM('prepaid', 'postpaid', 'shop')
          },
          createdAt: {
            type: DataTypes.DATE,
            allowNull: false
          },
          updatedAt: {
            type: DataTypes.DATE,
            allowNull: false
          }
        },{
            tableName: 'trx'   
        });

        return Trx;
}