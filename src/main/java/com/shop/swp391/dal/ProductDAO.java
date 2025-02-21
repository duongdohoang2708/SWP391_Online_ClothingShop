/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.shop.swp391.dal;

import com.shop.swp391.entity.Product;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author hung
 */
public class ProductDAO extends DBContext implements I_DAO<Product> {

    @Override
    public List<Product> findAll() {
        List<Product> products = new ArrayList<>();
        String sql = "SELECT * FROM product";
        try {
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                products.add(getFromResultSet(resultSet));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }

    @Override
    public boolean update(Product t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean delete(Product t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int insert(Product t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Product getFromResultSet(ResultSet rs) throws SQLException {
        return new Product(
                rs.getInt("ProductID"),
                rs.getInt("CategoryID"),
                rs.getString("ProductName"),
                rs.getDouble("Price"),
                rs.getInt("CollectionID"),
                rs.getString("description")
        );
    }

    public Product getProductById(int id) {
        Product product = null;
        String sql = "SELECT * FROM product WHERE ProductID = ?";
        try {
            statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            resultSet = statement.executeQuery();
            if (resultSet.next()) {
                product = new Product();
                product.setProductID(resultSet.getInt("ProductID"));
                product.setCategoryID(resultSet.getInt("CategoryID"));
                product.setProductName(resultSet.getString("ProductName"));
                product.setPrice(resultSet.getDouble("Price"));
                product.setCollectionID(resultSet.getInt("CollectionID"));
                product.setDescription(resultSet.getString("description"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return product;
    }

    public int getTotalProductCount() {
        String sql = "SELECT COUNT(*) FROM product";
        try {
            connection = new DBContext().getConnection();
            statement = connection.prepareStatement(sql);
            resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return resultSet.getInt(1);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            closeResources();
        }
        return 0;
    }

    public List<Product> findPagedProducts(int page, int pageSize) {
        List<Product> products = new ArrayList<>();
        int offset = (page - 1) * pageSize;
        String sql = "SELECT * FROM product LIMIT ? OFFSET ?";
        try {
            connection = new DBContext().getConnection();
            statement = connection.prepareStatement(sql);
            statement.setInt(1, pageSize);
            statement.setInt(2, offset);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                products.add(getFromResultSet(resultSet));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return products;
    }

    public List<Product> searchWithPagination(String keyword, int pageNumber, int pageSize) {
        List<Product> products = new ArrayList<>();
        String sql = "SELECT * FROM Product WHERE productName LIKE ? LIMIT ? OFFSET ?";
        try {
            connection = new DBContext().getConnection();
            statement = connection.prepareStatement(sql);
            statement.setString(1, "%" + keyword + "%");
            statement.setInt(2, pageSize);
            statement.setInt(3, (pageNumber - 1) * pageSize);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                products.add(getFromResultSet(resultSet));
            }
        } catch (SQLException ex) {
            System.out.println("Error in searchWithPagination: " + ex.getMessage());
        }
        return products;
    }

    public int countSearchResults(String keyword) {
        String sql = "SELECT COUNT(*) FROM Product WHERE productName LIKE ?";
        int count = 0;
        try {
            connection = new DBContext().getConnection();
            statement = connection.prepareStatement(sql);
            statement.setString(1, "%" + keyword + "%");
            resultSet = statement.executeQuery();
            if (resultSet.next()) {
                count = resultSet.getInt(1);
            }
        } catch (SQLException ex) {
            System.out.println("Error in countSearchResults: " + ex.getMessage());
        }
        return count;
    }

    public List<Product> findPagedProducts(int page, int pageSize, String sortBy) {
    List<Product> products = new ArrayList<>();
    int offset = (page - 1) * pageSize;
    String sql = "SELECT * FROM product ";  // Corrected table name to "product" as per your previous example

    // Add sorting based on the sortBy parameter
    if ("name_asc".equals(sortBy)) {
        sql += "ORDER BY productName ASC ";
    } else if ("name_desc".equals(sortBy)) {
        sql += "ORDER BY productName DESC ";
    } else if ("price_asc".equals(sortBy)) {
        sql += "ORDER BY price ASC ";
    } else if ("price_desc".equals(sortBy)) {
        sql += "ORDER BY price DESC ";
    } else {
        sql += "ORDER BY productID ASC "; // Default sorting by product_id
    }

    // Add pagination
    sql += "LIMIT ? OFFSET ?";

    try {
            connection = new DBContext().getConnection();
            statement = connection.prepareStatement(sql);
            statement.setInt(1, pageSize);
            statement.setInt(2, offset);
            resultSet = statement.executeQuery();
        while (resultSet.next()) {
            products.add(getFromResultSet(resultSet));
        }
    } catch (SQLException ex) {
        ex.printStackTrace();
    }
    return products;
}
    public List<Product> findPagedProducts(int page, int pageSize, String sortBy, Double minPrice, Double maxPrice, Integer colorID) {
     List<Product> products = new ArrayList<>();     
    int offset = (page - 1) * pageSize;
    StringBuilder sql = new StringBuilder("SELECT p.* FROM product p");

    // Join with variation table if color filter is applied
    if (colorID != null) {
        sql.append(" JOIN variation v ON p.ProductID = v.ProductID");
    }

    sql.append(" WHERE 1=1");

    // Add price filter
    if (minPrice != null) {
        sql.append(" AND p.Price >= ").append(minPrice);
    }
    if (maxPrice != null) {
        sql.append(" AND p.Price <= ").append(maxPrice);
    }

    // Add color filter
    if (colorID != null) {
        sql.append(" AND v.color_ID = ").append(colorID);
    }

    // Add sorting
    if (sortBy != null) {
        switch (sortBy) {
            case "name_asc":
                sql.append(" ORDER BY p.ProductName ASC");
                break;
            case "name_desc":
                sql.append(" ORDER BY p.ProductName DESC");
                break;
            case "price_asc":
                sql.append(" ORDER BY p.Price ASC");
                break;
            case "price_desc":
                sql.append(" ORDER BY p.Price DESC");
                break;
            default:
                // No sorting
                break;
        }
    }

    // Add pagination
    sql.append(" LIMIT ? OFFSET ?");

    try {
        connection = new DBContext().getConnection();
        statement = connection.prepareStatement(sql.toString());
        statement.setInt(1, pageSize);
        statement.setInt(2, offset);
        resultSet = statement.executeQuery();

        while (resultSet.next()) {
            products.add(getFromResultSet(resultSet));
        }
    } catch (SQLException e) {
        e.printStackTrace();
        throw new RuntimeException("Error fetching paged products", e);
    } finally {
        // Close resources
        try {
            if (resultSet != null) resultSet.close();
            if (statement != null) statement.close();
            if (connection != null) connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    return products;
}
public int getTotalProductCount(Double minPrice, Double maxPrice, Integer colorID) {
    StringBuilder sql = new StringBuilder("SELECT COUNT(*) FROM product p");

    if (colorID != null) {
        sql.append(" JOIN variation v ON p.ProductID = v.ProductID");
    }
    sql.append(" WHERE 1=1");

    if (minPrice != null) {
        sql.append(" AND p.Price >= ").append(minPrice);
    }
    if (maxPrice != null) {
        sql.append(" AND p.Price <= ").append(maxPrice);
    }

    if (colorID != null) {
        sql.append(" AND v.color_ID = ").append(colorID);
    }
    try {
        connection = new DBContext().getConnection();
        statement = connection.prepareStatement(sql.toString());
        resultSet = statement.executeQuery();

        if (resultSet.next()) {
            return resultSet.getInt(1);
        }
    } catch (SQLException e) {
        e.printStackTrace();
        throw new RuntimeException("Error fetching total product count", e);
    } 
    return 0;
}
    public static void main(String[] args) {
        ProductDAO productDAO = new ProductDAO();
        List<Product> products = productDAO.findAll();
        if (products.isEmpty()) {
            System.out.println("No products found.");
        } else {
            for (Product product : products) {
                System.out.println(product);
            }
        }
    }
}
