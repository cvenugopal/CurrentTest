`use strict`;

module.exports = (sequelize, {Model,DataTypes}) => {
    class products extends Model {}

    products.init({
        id: {
            type: DataTypes.BIGINT,
            primaryKey: true
        },
        name: {
            type: DataTypes.STRING(255)
        },
        price: {
            type: DataTypes.DECIMAL
        },
        description: {
            type: DataTypes.STRING
        },
        isDeleted: {
            type: DataTypes.INTEGER
        },
        productViewed: {
            type: DataTypes.INTEGER
        },
        createdDate: {
            type: DataTypes.STRING(45)
        },
        updatedDate: {
            type: DataTypes.STRING(45)
        },
        deletedDate: {
            type: DataTypes.STRING(45)
        }
    },
    {
        sequelize,
        modelName: 'products',
        freezeTableName: true,
        createdAt: false,
        updatedAt: false
    });
    return products;   
}