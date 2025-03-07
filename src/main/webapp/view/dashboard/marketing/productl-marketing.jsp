<%-- 
    Document   : productl-marketing
    Created on : Mar 1, 2025, 7:46:54 PM
    Author     : hung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!-- Mirrored from wowdash.wowtheme7.com/demo/users-list.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 03 Feb 2025 04:44:16 GMT -->
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Wowdash - Bootstrap 5 Admin Dashboard HTML Template</title>
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
                    <h6 class="fw-semibold mb-0">Product List</h6>
                    <ul class="d-flex align-items-center gap-2">
                        <li class="fw-medium">
                            <a href="index.html" class="d-flex align-items-center gap-1 hover-text-primary">
                                <iconify-icon icon="solar:home-smile-angle-outline" class="icon text-lg"></iconify-icon>
                                Dashboard
                            </a>
                        </li>
                        <li>-</li>
                        <li class="fw-medium">Product List</li>
                    </ul>
                </div>

                <div class="card h-100 p-0 radius-12">
                    <div class="card-header border-bottom bg-base py-16 px-24 d-flex align-items-center flex-wrap gap-3 justify-content-between">
                        <div class="d-flex align-items-center flex-wrap gap-3">
                            <form class="navbar-search">
                                <input type="text" class="bg-base h-40-px w-auto" name="search" placeholder="Search">
                                <iconify-icon icon="ion:search-outline" class="icon"></iconify-icon>
                            </form>
                            <select class="form-select form-select-sm w-auto ps-12 py-6 radius-12 h-40-px">
                                <option>Status</option>
                                <option>Active</option>
                                <option>Inactive</option>
                            </select>
                            <select class="form-select form-select-sm w-auto ps-12 py-6 radius-12 h-40-px">
                                <option>Status</option>
                                <option>Active</option>
                                <option>Inactive</option>
                            </select>
                            <select class="form-select form-select-sm w-auto ps-12 py-6 radius-12 h-40-px">
                                <option>Status</option>
                                <option>Active</option>
                                <option>Inactive</option>
                            </select>
                        </div>
                        <a href="add-product" class="btn btn-primary text-sm btn-sm px-12 py-12 radius-8 d-flex align-items-center gap-2"> 
                            <iconify-icon icon="ic:baseline-plus" class="icon text-xl line-height-1"></iconify-icon>
                            Add New Product
                        </a>
                    </div>
                    <div class="card-body p-24">
                        <div class="table-responsive scroll-sm">
                            <table class="table bordered-table sm-table mb-0">
                                <thead>
                                    <tr>
                                        <th scope="col">
                                            <div class="d-flex align-items-center gap-10">
                                                <div class="form-check style-check d-flex align-items-center">
                                                    <input class="form-check-input radius-4 border input-form-dark" type="checkbox" name="checkbox" id="selectAll">
                                                </div>
                                                S.L
                                            </div>
                                        </th>
                                        <th scope="col">Thumbnail</th>
                                        <th scope="col">Product name</th>
                                        <th scope="col">Price</th>
                                        <th scope="col">Category</th>
                                        <th scope="col">Collection</th>
                                        <th scope="col" class="text-center">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="product" items="${products}">
                                    <tr>
                                        <td>
                                            <div class="d-flex align-items-center gap-10">
                                                <div class="form-check style-check d-flex align-items-center">
                                                    <input class="form-check-input radius-4 border border-neutral-400" type="checkbox" name="checkbox">
                                                </div>
                                                <c:out value="${product.productID}" />
                                            </div>
                                        </td>
                                        <td>
                                            <img src="<c:out value='${productThumbnails[product.productID]}'/>" class="w-40-px h-40-px rounded-circle">
                                        </td>
                                        <td><c:out value="${product.productName}" /></td>
                                        <td>$<c:out value="${product.price}" /></td>
                                        <td><c:out value="${productCategories[product.productID]}" /></td>
                                        <td><c:out value="${productCollections[product.productID]}" /></td>                                       
                                        <td class="text-center"> 
                                            <div class="d-flex align-items-center gap-10 justify-content-center">                                              
                                                <a href="edit-product?productID=${product.productID}" class="bg-success-focus text-success-600 bg-hover-success-200 w-40-px h-40-px d-flex justify-content-center align-items-center rounded-circle">
                                                    <iconify-icon icon="lucide:edit"></iconify-icon>
                                                </a>
                                                <a href="javascript:void(0);" onclick="confirmDelete(${product.productID})"
                                                   class="bg-danger-focus bg-hover-danger-200 text-danger-600 w-40-px h-40-px d-flex justify-content-center align-items-center rounded-circle">
                                                    <iconify-icon icon="fluent:delete-24-regular"></iconify-icon>
                                                </a>

                                                <script>
                                                    function confirmDelete(productID) {
                                                        if (confirm("Are you sure you want to delete this product?")) {
                                                            window.location.href = "delete-product?productID=" + productID;
                                                        }
                                                    }
                                                </script>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>

                    <div class="d-flex align-items-center justify-content-between flex-wrap gap-2 mt-24">
                        <ul class="pagination d-flex flex-wrap align-items-center gap-2 justify-content-center">

                            <!-- Previous Page Button -->
                            <li class="page-item ${currentPage == 1 ? 'disabled' : ''}">
                                <a class="page-link bg-neutral-200 text-secondary-light fw-semibold radius-8 border-0 d-flex align-items-center justify-content-center h-32-px w-32-px text-md" 
                                   href="product-management?page=${currentPage - 1}">
                                    <iconify-icon icon="ep:arrow-left"></iconify-icon>
                                </a>
                            </li>
                            <li class="page-item ${currentPage == 1 ? 'active' : ''}">
                                <a class="page-link ${currentPage == 1 ? 'bg-primary-600 text-white' : 'bg-neutral-200 text-secondary-light'} fw-semibold radius-8 border-0 d-flex align-items-center justify-content-center h-32-px w-32-px text-md" 
                                   href="product-management?page=1">1</a>
                            </li>
                            <c:if test="${currentPage > 3}">
                                <li class="page-item">
                                    <span class="page-link bg-neutral-200 text-secondary-light fw-semibold radius-8 border-0 d-flex align-items-center justify-content-center h-32-px w-32-px">...</span>
                                </li>
                            </c:if>
                            <c:forEach var="i" begin="${Math.max(2, currentPage - 1)}" end="${Math.min(totalPages - 1, currentPage + 1)}">
                                <li class="page-item ${i == currentPage ? 'active' : ''}">
                                    <a class="page-link ${i == currentPage ? 'bg-primary-600 text-white' : 'bg-neutral-200 text-secondary-light'} fw-semibold radius-8 border-0 d-flex align-items-center justify-content-center h-32-px w-32-px text-md" 
                                       href="product-management?page=${i}">${i}</a>
                                </li>
                            </c:forEach>
                            <c:if test="${currentPage < totalPages - 2}">
                                <li class="page-item">
                                    <span class="page-link bg-neutral-200 text-secondary-light fw-semibold radius-8 border-0 d-flex align-items-center justify-content-center h-32-px w-32-px">...</span>
                                </li>
                            </c:if>
                            <li class="page-item ${currentPage == totalPages ? 'active' : ''}">
                                <a class="page-link ${currentPage == totalPages ? 'bg-primary-600 text-white' : 'bg-neutral-200 text-secondary-light'} fw-semibold radius-8 border-0 d-flex align-items-center justify-content-center h-32-px w-32-px text-md" 
                                   href="product-management?page=${totalPages}">${totalPages}</a>
                            </li>
                            <li class="page-item ${currentPage == totalPages ? 'disabled' : ''}">
                                <a class="page-link bg-neutral-200 text-secondary-light fw-semibold radius-8 border-0 d-flex align-items-center justify-content-center h-32-px w-32-px text-md" 
                                   href="product-management?page=${currentPage + 1}">
                                    <iconify-icon icon="ep:arrow-right"></iconify-icon>
                                </a>
                            </li>

                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <footer class="d-footer">
            <div class="row align-items-center justify-content-between">
                <div class="col-auto">
                    <p class="mb-0">© 2024 WowDash. All Rights Reserved.</p>
                </div>
                <div class="col-auto">
                    <p class="mb-0">Made by <span class="text-primary-600">wowtheme7</span></p>
                </div>
            </div>
        </footer>
    </main>
    <!-- JS here -->
    <jsp:include page="../../common/dashboard/js-dashboard.jsp"></jsp:include>
</body>

<!-- Mirrored from wowdash.wowtheme7.com/demo/users-list.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 03 Feb 2025 04:44:16 GMT -->
</html>
