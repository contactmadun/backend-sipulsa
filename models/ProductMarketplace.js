const { Sequelize, DataTypes } = require("sequelize");

module.exports = (Sequelize, DataTypes) => {
    const Product = Sequelize.define('Product', {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            allowNull: false,
            autoIncrement: true
          },
          id_category: {
            type: DataTypes.INTEGER,
            allowNull: false
          },
          id_brand: {
            type: DataTypes.INTEGER,
            allowNull: false,
          },
          name: {
            type: DataTypes.STRING,
            allowNull: false,
          },
          stok: {
            type: DataTypes.STRING,
          },
          price_1: {
            type: DataTypes.INTEGER
          },
          price_2: {
            type: DataTypes.INTEGER,
          },
          description: {
            type: DataTypes.TEXT
          },
          image: {
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
            tableName: 'marketplace_product'   
        });

        return Product;
}