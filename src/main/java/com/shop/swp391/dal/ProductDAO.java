/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.shop.swp391.dal;

import com.shop.swp391.entity.Color;
import com.shop.swp391.entity.Product;
import com.shop.swp391.entity.Size;
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
            connection = new DBContext().getConnection();
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

    public List<Product> findPagedProducts(int page, int pageSize, String sortBy, Double minPrice, Double maxPrice, Integer colorID, Integer categoryID) {
        List<Product> products = new ArrayList<>();
        int offset = (page - 1) * pageSize;

        // Building SQL query dynamically
        StringBuilder sql = new StringBuilder("SELECT p.* FROM product p");

        if (colorID != null) {
            sql.append(" JOIN variation v ON p.ProductID = v.ProductID");
        }

        if (categoryID != null) {
            sql.append(" JOIN category c ON p.CategoryID = c.CategoryID");
        }

        sql.append(" WHERE 1=1");

        if (minPrice != null) {
            sql.append(" AND p.Price >= ?");
        }

        if (maxPrice != null) {
            sql.append(" AND p.Price <= ?");
        }

        if (colorID != null) {
            sql.append(" AND v.color_ID = ?");
        }

        if (categoryID != null) {
            sql.append(" AND p.CategoryID = ?");
        }

        sql.append(" GROUP BY p.ProductID");

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
                    break;
            }
        }

        sql.append(" LIMIT ? OFFSET ?");

        System.out.println("Executing SQL: " + sql.toString()); // Debugging print

        try {
            connection = new DBContext().getConnection();
            statement = connection.prepareStatement(sql.toString());

            // Set parameters safely to prevent SQL errors
            int paramIndex = 1;
            if (minPrice != null) {
                statement.setDouble(paramIndex++, minPrice);
            }
            if (maxPrice != null) {
                statement.setDouble(paramIndex++, maxPrice);
            }
            if (colorID != null) {
                statement.setInt(paramIndex++, colorID);
            }
            if (categoryID != null) {
                statement.setInt(paramIndex++, categoryID);
            }

            statement.setInt(paramIndex++, pageSize);
            statement.setInt(paramIndex, offset);

            resultSet = statement.executeQuery();

            while (resultSet.next()) {
                products.add(getFromResultSet(resultSet));
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Error fetching paged products", e);
        } finally {
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (statement != null) {
                    statement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return products;
    }

    public int getTotalProductCount(Double minPrice, Double maxPrice, Integer colorID, Integer categoryID) {
        StringBuilder sql = new StringBuilder("SELECT COUNT(*) FROM product p WHERE p.Price BETWEEN ? AND ?");

        if (colorID != null) {
            sql.append(" AND p.ProductID IN (SELECT ProductID FROM variation WHERE color_ID = ?)");
        }

        if (categoryID != null) {
            sql.append(" AND p.CategoryID = ?");
        }

        try {
            connection = new DBContext().getConnection();
            statement = connection.prepareStatement(sql.toString());

            int paramIndex = 1;
            statement.setDouble(paramIndex++, minPrice != null ? minPrice : 0.0);
            statement.setDouble(paramIndex++, maxPrice != null ? maxPrice : 1000000.0);
            if (colorID != null) {
                statement.setInt(paramIndex++, colorID);
            }
            if (categoryID != null) {
                statement.setInt(paramIndex++, categoryID);
            }

            resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return resultSet.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException("Error fetching total product count", e);
        } finally {
            closeResources();
        }
        return 0;
    }

    public List<Color> getAvailableColors(int productId) {
        List<Color> colors = new ArrayList<>();
        String sql = "SELECT DISTINCT c.color_ID, c.color_name FROM variation v "
                + "JOIN color c ON v.color_ID = c.color_ID "
                + "WHERE v.ProductID = ?";

        try {
            connection = new DBContext().getConnection();
            statement = connection.prepareStatement(sql);
            statement.setInt(1, productId);
            resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Color color = new Color(resultSet.getInt("color_ID"), resultSet.getString("color_name"));
                colors.add(color);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return colors;
    }

    public List<Size> getAvailableSizes(int productId) {
        List<Size> sizes = new ArrayList<>();
        String sql = "SELECT DISTINCT s.size_ID, s.size_name FROM variation v "
                + "JOIN size s ON v.size_ID = s.size_ID "
                + "WHERE v.ProductID = ?";

        try {
            connection = new DBContext().getConnection();
            statement = connection.prepareStatement(sql);
            statement.setInt(1, productId);
            resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Size size = new Size(resultSet.getInt("size_ID"), resultSet.getString("size_name"));
                sizes.add(size);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return sizes;
    }

    public List<Product> findRelatedProducts(int categoryId, int excludeProductId, int limit) {
        List<Product> products = new ArrayList<>();
        String sql = "SELECT * FROM product WHERE CategoryID = ? AND ProductID <> ? LIMIT ?";

        try {
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            statement.setInt(1, categoryId);
            statement.setInt(2, excludeProductId);
            statement.setInt(3, limit);
            resultSet = statement.executeQuery();

            while (resultSet.next()) {
                products.add(getFromResultSet(resultSet));  // Create Product object
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            closeResources();
        }
        return products;
    }

    public List<Product> getRandomRelatedProducts(int categoryId, int excludeProductId, int limit) {
        List<Product> relatedProducts = new ArrayList<>();
        String sql = "SELECT p.* FROM product p "
                + "WHERE p.CategoryID = ? AND p.ProductID != ? "
                + "ORDER BY RAND() LIMIT ?";
        try {
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            statement.setInt(1, categoryId);
            statement.setInt(2, excludeProductId);
            statement.setInt(3, limit);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                relatedProducts.add(getFromResultSet(resultSet));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return relatedProducts;
    }

    public static void main(String[] args) {
        ProductDAO productDAO = new ProductDAO();

        int testProductId = 4; // Change this to a valid product ID from your database

        // Test getAvailableColors
        List<Color> colors = productDAO.getAvailableColors(testProductId);
        System.out.println("Available Colors:");
        for (Color color : colors) {
            System.out.println("ID: " + color.getColorID() + ", Name: " + color.getColorName());
        }

        // Test getAvailableSizes
        List<Size> sizes = productDAO.getAvailableSizes(testProductId);
        System.out.println("\nAvailable Sizes:");
        for (Size size : sizes) {
            System.out.println("ID: " + size.getSizeID() + ", Name: " + size.getSizeName());
        }
    }
}
