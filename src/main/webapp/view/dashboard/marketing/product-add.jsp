<%-- 
    Document   : product-add
    Created on : Mar 3, 2025, 7:25:12 PM
    Author     : hung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Map"%>
<%@page import="com.shop.swp391.entity.Product"%>
<%@page import="com.shop.swp391.entity.Color"%>
<%@page import="com.shop.swp391.entity.Category"%>
<%@page import="com.shop.swp391.entity.ProductImg"%>
<!-- meta tags and other links -->
<!DOCTYPE html>
<html lang="en" data-theme="light">

    <!-- Mirrored from wowdash.wowtheme7.com/demo/add-user.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 03 Feb 2025 04:44:21 GMT -->
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Store 24-Add User</title>
        <link rel="icon" type="image/png" href="assets/images/favicon.png" sizes="16x16">
        <!-- CSS here -->
        <jsp:include page="../../common/dashboard/css-dashboard.jsp"></jsp:include>
        </head>
        <body>
            <!-- Sidebar -->
        <jsp:include page="../../common/dashboard/sidebar-dashboard.jsp"></jsp:include>

            <!-- Header -->
        <jsp:include page="../../common/dashboard/header-dashboard.jsp"></jsp:include>


            <div class="dashboard-main-body">
                <div class="d-flex flex-wrap align-items-center justify-content-between gap-3 mb-24">
                    <h6 class="fw-semibold mb-0">Add Product</h6>
                    <ul class="d-flex align-items-center gap-2">
                        <li class="fw-medium">
                            <a href="index.html" class="d-flex align-items-center gap-1 hover-text-primary">
                                <iconify-icon icon="solar:home-smile-angle-outline" class="icon text-lg"></iconify-icon>
                                Dashboard
                            </a>
                        </li>
                        <li>-</li>
                        <li class="fw-medium">Add Product</li>
                    </ul>
                </div>

                <div class="card h-100 p-0 radius-12">
                    <div class="card-body p-24">
                        <div class="row justify-content-center">
                            <div class="col-xxl-6 col-xl-8 col-lg-10">
                                <div class="card border">
                                    <div class="card-body">                                      
                                        <form action="${pageContext.request.contextPath}/add-product" method="post">

                                        <div class="mb-20">
                                            <label for="productName" class="form-label fw-semibold text-primary-light text-sm mb-8">
                                                Product Name <span class="text-danger-600">*</span>
                                            </label>
                                            <input type="text" class="form-control radius-8" id="productName" name="productName" placeholder="Enter Product Name" required>
                                        </div>

                                        <div class="mb-20">
                                            <label for="categoryID" class="form-label fw-semibold text-primary-light text-sm mb-8">
                                                Category <span class="text-danger-600">*</span>
                                            </label>
                                            <select class="form-control radius-8 form-select" id="categoryID" name="categoryID" required>
                                                <c:forEach var="category" items="${categories}">
                                                    <option value="${category.categoryID}">${category.categoryName}</option>
                                                </c:forEach>
                                            </select>
                                        </div>

                                        <div class="mb-20">
                                            <label for="collectionID" class="form-label fw-semibold text-primary-light text-sm mb-8">
                                                Collection <span class="text-danger-600">*</span>
                                            </label>
                                            <select class="form-control radius-8 form-select" id="collectionID" name="collectionID" required>
                                                <c:forEach var="collection" items="${collections}">
                                                    <option value="${collection.collectionID}">${collection.collectionName}</option>
                                                </c:forEach>
                                            </select>
                                        </div>

                                        <div class="mb-20">
                                            <label for="price" class="form-label fw-semibold text-primary-light text-sm mb-8">
                                                Price <span class="text-danger-600">*</span>
                                            </label>
                                            <input type="number" class="form-control radius-8" id="price" name="price" step="0.01" placeholder="Enter Price" required>
                                        </div>

                                        <div class="mb-20">
                                            <label for="description" class="form-label fw-semibold text-primary-light text-sm mb-8">
                                                Description
                                            </label>
                                            <textarea class="form-control radius-8" id="description" name="description" placeholder="Enter Product Description"></textarea>
                                        </div>

                                        <div class="d-flex align-items-center justify-content-center gap-3">
                                            <button type="button" class="border border-danger-600 bg-hover-danger-200 text-danger-600 text-md px-56 py-11 radius-8"
                                                    onclick="window.location.href = '${pageContext.request.contextPath}/product-management'">
                                                Cancel
                                            </button>
                                            <button type="submit" class="btn btn-primary border border-primary-600 text-md px-56 py-12 radius-8">
                                                Save
                                            </button>
                                        </div>                                      
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <!-- JS here -->
    <jsp:include page="../../common/dashboard/js-dashboard.jsp"></jsp:include>


</body>

</html>
