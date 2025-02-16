/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package com.shop.swp391.controller.profile;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import com.shop.swp391.config.GlobalConfig;
import com.shop.swp391.entity.User;
import com.shop.swp391.dal.UserDAO;

@WebServlet(name="ProfileController", urlPatterns={"/profile"})
public class ProfileController extends HttpServlet {

    private UserDAO userDAO;

    @Override
    public void init() {
        userDAO = new UserDAO();
    }
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute(GlobalConfig.SESSION_ACCOUNT);

        if (user == null) {
            response.sendRedirect("authen?action=login");
            return;
        }

        //find user by email
        user = userDAO.findByEmail(user);
        System.out.println(user);
        
        request.setAttribute("user", user);
        request.getRequestDispatcher("view/profile/profile.jsp").forward(request, response);
    } 


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String action = request.getParameter("action");
        
        if ("update".equals(action)) {
            updateProfile(request, response);
        } else {
            processRequest(request, response);
        }
    }

    private void updateProfile(HttpServletRequest request, HttpServletResponse response) 
    throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String phone = request.getParameter("phone");
            String dob = request.getParameter("dob");
            boolean sex = Boolean.parseBoolean(request.getParameter("sex"));

            // Lấy user từ session
            User currentUser = (User) request.getSession().getAttribute(GlobalConfig.SESSION_ACCOUNT);
            
            // Kiểm tra xem user có quyền chỉnh sửa thông tin này không
            if (currentUser != null && currentUser.getId() == id) {
                // Tạo đối tượng User với thông tin mới
                User updatedUser = new User();
                updatedUser.setId(id);
                updatedUser.setFirstName(firstName);
                updatedUser.setLastName(lastName);
                updatedUser.setPhone(phone);
                updatedUser.setDob(dob);
                updatedUser.setSex(sex);
                updatedUser.setRoleId(currentUser.getRoleId());
                updatedUser.setEmail(currentUser.getEmail());
                updatedUser.setUsername(currentUser.getUsername());

                // Cập nhật vào database
                boolean isUpdated = userDAO.update(updatedUser);
                
                if (isUpdated) {
                    // Cập nhật lại thông tin trong session
                    currentUser.setFirstName(firstName);
                    currentUser.setLastName(lastName);
                    currentUser.setPhone(phone);
                    currentUser.setDob(dob);
                    currentUser.setSex(sex);
                    
                    request.setAttribute("suc", "Profile updated successfully!");
                } else {
                    request.setAttribute("err", "Failed to update profile!");
                }
            } else {
                request.setAttribute("err", "Unauthorized access!");
            }
        } catch (Exception e) {
            request.setAttribute("err", "An error occurred: " + e.getMessage());
        }
        
        // Chuyển hướng trở lại trang profile
        doGet(request, response);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ProfileController</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProfileController at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

}
