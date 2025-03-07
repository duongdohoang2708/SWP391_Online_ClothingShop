/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.shop.swp391.dal;

import com.shop.swp391.entity.Collection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author hung
 */
public class CollectionDAO extends DBContext implements I_DAO<Collection> {

    @Override
    public List<Collection> findAll() {
        List<Collection> collections = new ArrayList<>();
        String sql = "SELECT * FROM collection";
        try {
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                collections.add(getFromResultSet(resultSet));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return collections;
    }

    @Override
    public boolean update(Collection t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean delete(Collection t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int insert(Collection t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Collection getFromResultSet(ResultSet rs) throws SQLException {
        return new Collection(
                rs.getInt("CollectionID"),
                rs.getString("CollectionName"),
                rs.getString("collectionImg"),
                rs.getString("collection_description"),
                rs.getTimestamp("create_date"),
                rs.getInt("PromotionID")
        );
    }

    public String getCollectionNameByID(int collectionID) {
        String sql = "SELECT CollectionName FROM collection WHERE CollectionID = ?";
        try {
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            statement.setInt(1, collectionID);
            resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return resultSet.getString("CollectionName");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
