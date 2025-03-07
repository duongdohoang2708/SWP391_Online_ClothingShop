/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.shop.swp391.controller.marketing;

import com.shop.swp391.dal.CategoryDAO;
import com.shop.swp391.dal.CollectionDAO;
import com.shop.swp391.dal.ProductDAO;
import com.shop.swp391.dal.ProductImgDAO;
import com.shop.swp391.entity.Category;
import com.shop.swp391.entity.Collection;
import com.shop.swp391.entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author hung
 */
@WebServlet(name = "ProductMarketingController", urlPatterns = {"/product-management", "/add-product", "/edit-product", "/delete-product"})
public class ProductMarketingController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ProductMarketingController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProductMarketingController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private final ProductDAO productDAO = new ProductDAO();
    private final ProductImgDAO productImgDAO = new ProductImgDAO();
    private final CategoryDAO categoryDAO = new CategoryDAO();
    private final CollectionDAO collectionDAO = new CollectionDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();
        switch (action) {
            case "/add-product":
                List<Category> categories = categoryDAO.findAll();
                List<Collection> collections = collectionDAO.findAll();
                request.setAttribute("categories", categories);
                request.setAttribute("collections", collections);
                request.getRequestDispatcher("view/dashboard/marketing/product-add.jsp").forward(request, response);
                break;
            case "/edit-product":
                showEditForm(request, response);
                break;
            case "/delete-product":
                deleteProduct(request, response);
                break;
            default:
                listProducts(request, response);
        }
    }

    public void listProducts(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int page = 1;
        int recordsPerPage = 10;
        if (request.getParameter("page") != null) {
            page = Integer.parseInt(request.getParameter("page"));
        }
        int start = (page - 1) * recordsPerPage;
        List<Product> products = productDAO.getProductsByPage(start, recordsPerPage);
        int totalProducts = productDAO.getTotalProductCount();
        int totalPages = (int) Math.ceil((double) totalProducts / recordsPerPage);

        Map<Integer, String> productThumbnails = new HashMap<>();
        Map<Integer, String> productCategories = new HashMap<>();
        Map<Integer, String> productCollections = new HashMap<>();

        for (Product product : products) {
            String thumbnail = productImgDAO.getProductThumbnail(product.getProductID());
            productThumbnails.put(product.getProductID(), thumbnail);
            Category category = categoryDAO.getCategoryById(product.getCategoryID());
            productCategories.put(product.getProductID(), category != null ? category.getCategoryName() : "Uncategorized");
            String collectionName = collectionDAO.getCollectionNameByID(product.getCollectionID());
            productCollections.put(product.getProductID(), collectionName != null ? collectionName : "No Collection");
        }
        request.setAttribute("products", products);
        request.setAttribute("productThumbnails", productThumbnails);
        request.setAttribute("productCategories", productCategories);
        request.setAttribute("productCollections", productCollections);
        request.setAttribute("currentPage", page);
        request.setAttribute("totalPages", totalPages);
        request.getRequestDispatcher("view/dashboard/marketing/productl-marketing.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int productID = Integer.parseInt(request.getParameter("productID"));
        Product product = productDAO.getProductById(productID);

        if (product != null) {
            request.setAttribute("product", product);
            request.getRequestDispatcher("view/dashboard/marketing/edit-product.jsp").forward(request, response);
        } else {
            response.sendRedirect("product-management");
        }
    }

    private void deleteProduct(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        int productID = Integer.parseInt(request.getParameter("productID"));
        Product product = productDAO.getProductById(productID);

        if (product != null) {
            boolean success = productDAO.delete(product);
            if (success) {
                System.out.println("Product deleted successfully.");
            } else {
                System.out.println("Failed to delete product.");
            }
        }

        // Redirect back to the referring page (where the delete button was clicked)
        String referer = request.getHeader("Referer");
        if (referer != null) {
            response.sendRedirect(referer);
        } else {
            response.sendRedirect("product-management"); // Fallback if no referer
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();

        switch (action) {
            case "/add-product":
                addProduct(request, response);
                break;
            case "/edit-product":
                updateProduct(request, response);
                break;
            default:
                response.sendRedirect("product-management");
        }
    }

    private void addProduct(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        int categoryID = Integer.parseInt(request.getParameter("categoryID"));
        String productName = request.getParameter("productName");
        double price = Double.parseDouble(request.getParameter("price"));
        int collectionID = Integer.parseInt(request.getParameter("collectionID"));
        String description = request.getParameter("description");
        Product product = new Product(0, categoryID, productName, price, collectionID, description);
        productDAO.insert(product);
        response.sendRedirect("product-management");
    }

    private void updateProduct(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        int productID = Integer.parseInt(request.getParameter("productID"));
        int categoryID = Integer.parseInt(request.getParameter("categoryID"));
        String productName = request.getParameter("productName");
        double price = Double.parseDouble(request.getParameter("price"));
        int collectionID = Integer.parseInt(request.getParameter("collectionID"));
        String description = request.getParameter("description");
        Product product = new Product(productID, categoryID, productName, price, collectionID, description);
        productDAO.update(product);

        response.sendRedirect("product-management");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
