/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.shop.swp391.dal;

import com.shop.swp391.entity.ProductImg;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author hung
 */
public class ProductImgDAO extends DBContext implements I_DAO<ProductImg> {

    @Override
    public List<ProductImg> findAll() {
        List<ProductImg> productImgs = new ArrayList<>();
        String sql = "SELECT * FROM product_img";
        try {
            connection = new DBContext().connection;
            statement = connection.prepareStatement(sql);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                productImgs.add(getFromResultSet(resultSet));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return productImgs;
    }

    @Override
    public boolean update(ProductImg t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean delete(ProductImg t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int insert(ProductImg t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ProductImg getFromResultSet(ResultSet rs) throws SQLException {
        return new ProductImg(
                rs.getInt("product_img_ID"),
                rs.getString("thumbnail"),
                rs.getString("product_img_1"),
                rs.getString("product_img_2"),
                rs.getString("product_img_3"),
                rs.getString("product_img_name")
        );
    }
    public String getProductThumbnail(int productId) {
        String sql = "SELECT thumbnail FROM product_img WHERE productImgID = ? LIMIT 1";
        try {
            connection = new DBContext().getConnection();
            statement = connection.prepareStatement(sql);
            statement.setInt(1, productId);
            resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return resultSet.getString("thumbnail");
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return "images/default.jpg"; 
    }
}
