const { Sequelize, DataTypes } = require("sequelize");

module.exports = (Sequelize, DataTypes) => {
    const Deposit = Sequelize.define('Deposit', {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            allowNull: false,
            autoIncrement: true
          },
          refId: {
            type: DataTypes.STRING,
            allowNull: false
          },
          user: {
            type: DataTypes.STRING,
            allowNull: false
          },
          storeName: {
            type: DataTypes.STRING
          },
          method:{
            type: DataTypes.STRING
          },
          amount:{
            type: DataTypes.INTEGER,
            allowNull: false
          },
          status:{
            type: DataTypes.ENUM("proses", "sukses", "gagal"),
            defaultValue: "proses"
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
            tableName: 'deposit'   
        });

        return Deposit;
}