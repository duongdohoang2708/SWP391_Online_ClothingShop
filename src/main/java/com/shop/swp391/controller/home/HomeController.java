package com.shop.swp391.controller.home;

import com.shop.swp391.dal.StoryDAO;
import com.shop.swp391.entity.Story;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeController", urlPatterns = {"/home"})
public class HomeController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        StoryDAO storyDAO = new StoryDAO();
        List<Story> stories = storyDAO.getLatestActiveStories(); // Lấy 3 story active mới nhất

        request.setAttribute("stories", stories); // Truyền dữ liệu sang home.jsp
        request.getRequestDispatcher("/view/home/homepage.jsp").forward(request, response); // Chuyển hướng đến trang chủ
    }
}
