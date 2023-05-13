'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up (queryInterface, Sequelize) {
    /**
     * Add altering commands here.
     *
     * Example:
     * await queryInterface.createTable('users', { id: Sequelize.INTEGER });
     */
     await queryInterface.createTable('trx', { 
      id: {
        type: Sequelize.INTEGER,
        primaryKey: true,
        allowNull: false,
        autoIncrement: true
      },
      refId: {
        type: Sequelize.STRING,
        allowNull: false,
      },
      user: {
        type: Sequelize.STRING,
      },
      code: {
        type: Sequelize.STRING
      },
      name: {
        type: Sequelize.STRING
      },
      number: {
        type: Sequelize.STRING
      },
      note: {
        type: Sequelize.STRING
      },
      price: {
        type: Sequelize.INTEGER
      },
      profit:{
        type: Sequelize.INTEGER
      },
      status: {
        type: Sequelize.ENUM('Sukses', 'Pending', 'Gagal'),
        defaultValue: 'Pending'
      },
      refund: {
        type: Sequelize.ENUM('0', '1')
      },
      rCoin:{
        type: Sequelize.INTEGER
      },
      trxType: {
        type: Sequelize.ENUM('prepaid', 'postpaid', 'shop')
      },
      createdAt: {
        type: Sequelize.DATE,
        allowNull: false
      },
      updatedAt: {
        type: Sequelize.DATE,
        allowNull: false
      }
    });
  },

  async down (queryInterface, Sequelize) {
    /**
     * Add reverting commands here.
     *
     * Example:
     * await queryInterface.dropTable('users');
     */
     await queryInterface.dropTable('trx');
  }
};
