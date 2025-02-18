/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.shop.swp391.dal;

import com.shop.swp391.entity.Variation;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author hung
 */
public class VariationDAO extends DBContext implements I_DAO<Variation>{

    @Override
    public List<Variation> findAll() {
        List<Variation> variations = new ArrayList<>();
        String sql = "SELECT * FROM variation";
        try {
            connection = new DBContext().connection;
            statement = connection.prepareStatement(sql);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                variations.add(getFromResultSet(resultSet));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } 
        return variations;
    }

    @Override
    public boolean update(Variation t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean delete(Variation t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int insert(Variation t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Variation getFromResultSet(ResultSet rs) throws SQLException {
        return new Variation(
            rs.getInt("VariationID"),
            rs.getInt("ProductID"),
            rs.getInt("color_ID"),
            rs.getInt("size_ID"),
            rs.getInt("qty_in_stock"),
            rs.getInt("product_img_ID")
        );
    }
}
