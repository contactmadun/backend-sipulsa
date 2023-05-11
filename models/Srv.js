const { Sequelize, DataTypes } = require("sequelize");

module.exports = (Sequelize, DataTypes) => {
    const Srv = Sequelize.define('Srv', {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            allowNull: false,
            autoIncrement: true
          },
          type: {
            type: DataTypes.STRING,
            allowNull: false
          },
          code: {
            type: DataTypes.STRING,
            allowNull: false
          },
          name: {
            type: DataTypes.STRING,
            allowNull: false
          },
          note: {
            type: DataTypes.STRING
          },
          min: {
            type: DataTypes.INTEGER
          },
          max: {
            type: DataTypes.INTEGER
          },
          refil: {
            type: DataTypes.ENUM('1', '0')
          },
          price:{
            type: DataTypes.INTEGER
          },
          price_sale:{
            type: DataTypes.INTEGER
          },
          status:{
            type: DataTypes.ENUM('available', 'empty')
          },
          brand:{
            type: DataTypes.STRING
          },
          category:{
            type: DataTypes.STRING
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
            tableName: 'srv'   
        });

        return Srv;
}