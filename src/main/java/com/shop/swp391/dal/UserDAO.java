
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.shop.swp391.dal;

import com.shop.swp391.config.GlobalConfig;
import com.shop.swp391.entity.User;
import java.sql.*;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.ArrayList;
import java.util.HashMap;

/**
 *
 * @author ADMIN
 */
public class UserDAO extends DBContext implements I_DAO<User> {

    @Override
    public List<User> findAll() {
        List<User> users = new ArrayList<>();
        String sql = "SELECT * FROM user";
        try {
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                users.add(getFromResultSet(resultSet));
            }
        } catch (SQLException ex) {
            System.out.println("Error finding users: " + ex.getMessage());
        } finally {
            closeResources();
        }
        return users;
    }

    @Override
    public boolean update(User user) {
        String sql = "UPDATE user SET UserName = ?, Password = ?, Email = ?, Phone = ?, " +
                "FirstName = ?, LastName = ?, Dob = ?, Sex = ?, Role = ? WHERE UserID = ?";

        try {
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            statement.setString(1, user.getUserName());
            statement.setString(2, user.getPassword());
            statement.setString(3, user.getEmail());
            statement.setString(4, user.getPhone());
            statement.setString(5, user.getFirstName());
            statement.setString(6, user.getLastName());
            statement.setDate(7, new java.sql.Date(user.getDob().getTime()));
            statement.setInt(8, user.getSex());
            statement.setInt(9, user.getRole());
            statement.setInt(10, user.getUserID());

            int affectedRows = statement.executeUpdate();
            return affectedRows > 0;
        } catch (SQLException ex) {
            System.out.println("Error updating user: " + ex.getMessage());
            return false;
        } finally {
            closeResources();
        }
    }

    @Override
    public boolean delete(User user) {
        String sql = "DELETE FROM user WHERE UserID = ?";
        try {
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            statement.setInt(1, user.getUserID());

            int affectedRows = statement.executeUpdate();
            return affectedRows > 0;
        } catch (SQLException ex) {
            System.out.println("Error deleting user: " + ex.getMessage());
            return false;
        } finally {
            closeResources();
        }
    }

    @Override
    public int insert(User user) {
        String sql = "INSERT INTO user (UserName, Password, Email, Phone, FirstName, LastName, Dob, Sex, Role) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try {
            connection = getConnection();
            statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            statement.setString(1, user.getUserName());
            statement.setString(2, user.getPassword());
            statement.setString(3, user.getEmail());
            statement.setString(4, user.getPhone());
            statement.setString(5, user.getFirstName());
            statement.setString(6, user.getLastName());
            statement.setDate(7, new java.sql.Date(user.getDob().getTime()));
            statement.setInt(8, user.getSex());
            statement.setInt(9, user.getRole());

            int affectedRows = statement.executeUpdate();

            if (affectedRows == 0) {
                throw new SQLException("Creating user failed, no rows affected.");
            }

            resultSet = statement.getGeneratedKeys();
            if (resultSet.next()) {
                return resultSet.getInt(1);
            } else {
                throw new SQLException("Creating user failed, no ID obtained.");
            }
        } catch (SQLException ex) {
            System.out.println("Error inserting user: " + ex.getMessage());
            return -1;
        } finally {
            closeResources();
        }
    }

    @Override
    public User getFromResultSet(ResultSet rs) throws SQLException {
        return new User(
                rs.getInt("UserID"),
                rs.getString("UserName"),
                rs.getString("Password"),
                rs.getString("Email"),
                rs.getString("FirstName"),
                rs.getString("LastName"),
                rs.getDate("Dob"),
                rs.getInt("Sex"),
                rs.getInt("Role"),
                rs.getString("Phone")
        );
    }

    public User findById(int id) {
        String sql = "SELECT * FROM user WHERE UserID = ?";
        try {
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return getFromResultSet(resultSet);
            }
        } catch (SQLException ex) {
            System.out.println("Error finding user by ID: " + ex.getMessage());
        } finally {
            closeResources();
        }
        return null;
    }

    public User findByEmailOrUsernameAndPass(String emailOrUsername, String password) {
        String sql = "SELECT * FROM user WHERE (Email = ? OR UserName = ?) AND Password = ?";
        try {
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            statement.setString(1, emailOrUsername);
            statement.setString(2, emailOrUsername);
            statement.setString(3, password);
            resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return getFromResultSet(resultSet);
            }
        } catch (SQLException ex) {
            System.out.println("Error finding user by email/username and password: " + ex.getMessage());
        } finally {
            closeResources();
        }
        return null;
    }

    public boolean updatePassword(User user) {
        String sql = "UPDATE user SET Password = ? WHERE Email = ?";
        try {
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            statement.setString(1, user.getPassword());
            statement.setString(2, user.getEmail());
            int affectedRows = statement.executeUpdate();
            return affectedRows > 0;
        } catch (SQLException ex) {
            System.out.println("Error updating password: " + ex.getMessage());
            return false;
        } finally {
            closeResources();
        }
    }

    public int getTotalUsers() {
        String sql = "SELECT COUNT(*) FROM user";
        try {
            connection = getConnection();
            statement = connection.prepareStatement(sql);
            resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return resultSet.getInt(1);
            }
        } catch (SQLException ex) {
            System.out.println("Error counting users: " + ex.getMessage());
        } finally {
            closeResources();
        }
        return 0;
    }
 

}