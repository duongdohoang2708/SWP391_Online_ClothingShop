<%-- 
    Document   : productlist
    Created on : Feb 15, 2025, 11:08:16 AM
    Author     : hung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">
    <%@page import="java.util.List"%>
    <%@page import="java.util.Map"%>
    <%@page import="com.shop.swp391.entity.Product"%>
    <!-- Mirrored from htmldemo.net/clothing/clothing/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 01 Feb 2025 03:37:06 GMT -->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Home || Clothing</title>
        <meta name="description"
              content="Clothing – eCommerce Fashion Template is a clean and elegant design – suitable for selling clothing, fashion, high fashion, men fashion, women fashion, accessories, digital, kids, watches, jewelries, shoes, kids, furniture, sports, tools….. It has a fully responsive width adjusts automatically to any screen size or resolution.">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="shortcut icon" type="image/x-icon" href="images/icons/favicon.png">
        <!-- Place favicon.png in the root directory -->

        <!-- All css files are included here. -->
        <!-- Bootstrap fremwork main css -->
        <jsp:include page="../common/home/css-home.jsp"></jsp:include>



        </head>
    <% 
        List<Product> products = (List<Product>) request.getAttribute("products"); 
        Map<Integer, String> productImages = (Map<Integer, String>) request.getAttribute("productImages");
        int currentPage = (int) request.getAttribute("currentPage");
        int totalPages = (int) request.getAttribute("totalPages");
    %>
    <body>
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->  

        <!-- Body main wrapper start -->
        <div class="wrapper shop">

            <!-- Start of header area -->
            <jsp:include page="../common/home/header-homepage.jsp"></jsp:include>
                <!-- End of header area -->

                <!--breadcumb area start -->
                <div class="breadcumb-area breadcumb-2 overlay pos-rltv">
                    <div class="bread-main">
                        <div class="bred-hading text-center">
                            <h5>Product Grid View</h5> </div>
                        <ol class="breadcrumb">
                            <li class="home"><a title="Go to Home Page" href="home">Home</a></li>
                            <li class="active">Shop</li>
                        </ol>
                    </div>
                </div>
                <!--breadcumb area end -->

                <!--shop main area are start-->
                <div class="shop-main-area grid-view_area ptb-70">
                    <div class="container">
                        <div class="row">
                            <!--main-shop-product start-->
                            <div class="col-lg-9 col-md-8 order-lg-2 order-md-2 order-1">
                                <div class="shop-wraper">
                                    <div class="col-lg-12">
                                        <div class="shop-area-top">
                                            <div class="row">
                                                <div class="col-xl-6 col-lg-9 col-md-9">
                                                    <div class="sort product-show">
                                                        <label>View</label>
                                                        <select id="input-amount">
                                                            <option value="volvo">10</option>
                                                            <option value="saab">15</option>
                                                            <option value="vw">20</option>
                                                            <option value="audi" selected>25</option>
                                                        </select>
                                                    </div>
                                                    <div class="sort product-type">
                                                        <label>Sort By</label>
                                                        <select id="input-sort">
                                                            <option value="#" selected>Default</option>
                                                            <option value="#">Name (A - Z)</option>
                                                            <option value="#">Name (Z - A)</option>
                                                            <option value="#">Price (Low &gt; High)</option>
                                                            <option value="#">Price (High &gt; Low)</option>
                                                            <option value="#">Rating (Highest)</option>
                                                            <option value="#">Rating (Lowest)</option>
                                                            <option value="#">Model (A - Z)</option>
                                                            <option value="#">Model (Z - A)</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-xl-3 col-lg-3 col-md-3">
                                                    <div class="list-grid-view text-center">
                                                        <ul class="nav" role="tablist">
                                                            <li role="presentation"><a class="active" href="#grid" aria-controls="grid"
                                                                                       role="tab" data-bs-toggle="tab"><i class="zmdi zmdi-widgets"></i></a>
                                                            </li>
                                                            <li role="presentation"><a href="#list" aria-controls="list" role="tab"
                                                                                       data-bs-toggle="tab"><i class="zmdi zmdi-view-list-alt"></i></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="col-xl-3 d-lg-none d-xl-block d-none">
                                                    <div class="total-showing text-end">
                                                        Showing - <span>10</span> to <span>18</span> Of Total <span>36</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div class="col-lg-12">
                                        <div class="shop-total-product-area clearfix mt-35">
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane fade show active" id="grid">
                <div class="total-shop-product-grid row">
                    <% for (Product product : (List<Product>) request.getAttribute("products")) { %>
                    <div class="col-lg-4 col-md-6 item">
                        <div class="single-product">
                            <div class="product-img">
                                <div class="product-label red">
                                    <div class="new">New</div>
                                </div>
                                <div class="single-prodcut-img product-overlay pos-rltv">
                                    <a href="single-product.jsp?productID=<%= product.getProductID() %>">
                                        <img alt="" src="<%= ((Map<Integer, String>) request.getAttribute("productImages")).get(product.getProductID()) %>" class="primary-image">
                                    </a>
                                </div>
                            </div>
                            <div class="product-text">
                                <div class="prodcut-name">
                                    <a href="single-product.jsp?productID=<%= product.getProductID() %>">
                                        <%= product.getProductName() %>
                                    </a>
                                </div>
                                <div class="prodcut-ratting-price">
                                    <div class="prodcut-price">
                                        <div class="new-price"> $<%= product.getPrice() %> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% } %>
                </div>
            </div>
        </div>
    </div>
                                    <div class="pagination-btn text-center mt-4">
                                        <ul class="page-numbers">
                                            <!-- Previous Button -->
                                            <% if (currentPage > 1) { %>
                                            <li><a href="products?page=<%= currentPage - 1 %>" class="next page-numbers">
                                                    <i class="zmdi zmdi-long-arrow-left"></i></a>
                                            </li>
                                            <% } else { %>
                                            <li class="disabled"><span class="page-numbers"><i class="zmdi zmdi-long-arrow-left"></i></span></li>
                                                    <% } %>

                                            <!-- Page Numbers -->
                                            <% for (int i = 1; i <= totalPages; i++) { %>
                                            <% if (i == currentPage) { %>
                                            <li><span class="page-numbers current"><%= i %></span></li>
                                                <% } else { %>
                                            <li><a href="products?page=<%= i %>" class="page-numbers"><%= i %></a></li>
                                                <% } %>
                                                <% } %>

                                            <!-- Next Button -->
                                            <% if (currentPage < totalPages) { %>
                                            <li><a href="products?page=<%= currentPage + 1 %>" class="next page-numbers">
                                                    <i class="zmdi zmdi-long-arrow-right"></i></a>
                                            </li>
                                            <% } else { %>
                                            <li class="disabled"><span class="page-numbers"><i class="zmdi zmdi-long-arrow-right"></i></span></li>
                                                    <% } %>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--main-shop-product start-->

                        <!--shop sidebar start-->
                        <div class="col-lg-3 col-md-4 order-lg-1 order-md-1 order-2">
                            <div class="shop-sidebar">
                                <!--single aside start-->
                               
                                <!--single aside end-->

                                <!--single aside start-->
                                <aside class="single-aside catagories-aside">
                                    <div class="heading-title aside-title pos-rltv">
                                        <h5 class="uppercase">categories</h5>
                                    </div>
                                    <div id="cat-treeview" class="product-cat">
                                        <ul>
                                            <li class="closed"><a href="#">Men (05)</a>
                                                <ul>
                                                    <li><a href="#">T-Shirt</a></li>
                                                    <li><a href="#">Shirt</a></li>
                                                    <li><a href="#">Pant</a></li>
                                                    <li><a href="#">Shoe</a></li>
                                                    <li><a href="#">Gifts</a></li>
                                                </ul>
                                            </li>
                                            <li class="closed"><a href="#">Women (10)</a>
                                                <ul>
                                                    <li><a href="#">T-Shirt</a>
                                                        <ul>
                                                            <li><a href="#">T-Shirt 01</a></li>
                                                            <li><a href="#">T-Shirt 02</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="#">Shirt</a>
                                                        <ul>
                                                            <li><a href="#">Shirt 01</a></li>
                                                            <li><a href="#">Shirt 02</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="#">Pant</a>
                                                        <ul>
                                                            <li><a href="#">Pant 01</a></li>
                                                            <li><a href="#">Pant 02</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="#">Shoe</a>
                                                        <ul>
                                                            <li><a href="#">Shoe 01</a></li>
                                                            <li><a href="#">Shoe 02</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="#">Gifts</a>
                                                        <ul>
                                                            <li><a href="#">Gift 01</a></li>
                                                            <li><a href="#">Gift 02</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li class="closed"><a href="#">Accessories (07)</a>
                                                <ul>
                                                    <li><a href="#">Accessories 01</a></li>
                                                    <li><a href="#">Accessories 02</a></li>
                                                    <li><a href="#">Accessories 03</a></li>
                                                </ul>
                                            </li>
                                            <li class="closed"><a href="#">Beauty (06)</a>
                                                <ul>
                                                    <li><a href="#">Beauty 01</a></li>
                                                    <li><a href="#">Beauty 02</a></li>
                                                    <li><a href="#">Beauty 03</a></li>
                                                </ul>
                                            </li>
                                            <li class="closed"><a href="#">Watch (09)</a>
                                                <ul>
                                                    <li><a href="#">Watch 01</a></li>
                                                    <li><a href="#">Watch 02</a></li>
                                                    <li><a href="#">Watch 03</a></li>
                                                </ul>
                                            </li>
                                            <li class="closed"><a href="#">Sports</a></li>
                                            <li class="closed"><a href="#">Others</a></li>
                                        </ul>
                                    </div>
                                </aside>
                                <!--single aside end-->

                                <!--single aside start-->
                                <aside class="single-aside price-aside fix">
                                    <div class="heading-title aside-title pos-rltv">
                                        <h5 class="uppercase">price</h5>
                                    </div>
                                    <div class="price_filter">
                                        <div id="slider-range"></div>
                                        <div class="price_slider_amount">
                                            <input type="text" id="amount" name="price" placeholder="Add Your Price" />
                                            <input type="submit" value="Filter" />
                                        </div>
                                    </div>
                                </aside>
                                <!--single aside end-->

                                <!--single aside start-->
                                <aside class="single-aside color-aside">
                                    <div class="heading-title aside-title pos-rltv">
                                        <h5 class="uppercase">Color</h5>
                                    </div>
                                    <ul class="color-filter mt-30">
                                        <li><a href="#" class="color-1"></a></li>
                                        <li><a href="#" class="color-2 active"></a></li>
                                        <li><a href="#" class="color-3"></a></li>
                                        <li><a href="#" class="color-4"></a></li>
                                        <li><a href="#" class="color-5"></a></li>
                                        <li><a href="#" class="color-6"></a></li>
                                        <li><a href="#" class="color-7"></a></li>
                                        <li><a href="#" class="color-8"></a></li>
                                        <li><a href="#" class="color-9"></a></li>
                                    </ul>
                                </aside>
                                <!--single aside end-->

                                <!--single aside start-->
                                <!--single aside end-->

                                <!--single aside start-->
                                <aside class="single-aside add-aside">
                                    <a href="single-product.html"><img src="images/banner/add.jpg" alt=""></a>
                                </aside>
                                <!--single aside end-->
                            </div>
                        </div>
                        <!--shop sidebar end-->
                    </div>
                </div>
            </div>
            <!--shop main area are end-->

            <!-- footer area start-->

            <!--footer area start-->

            <!--footer bottom area start-->
            <jsp:include page="../common/home/footer-homepage.jsp"></jsp:include>
                <!--footer bottom area end-->



                <!-- QUICKVIEW PRODUCT -->

                <!-- END QUICKVIEW PRODUCT -->

            </div> 
            <!-- Body main wrapper end -->

            <!-- Placed js at the end of the document so the pages load faster -->

            <!-- jquery latest version -->
        <jsp:include page="../common/home/js-home.jsp"></jsp:include>

    </body>


    <!-- Mirrored from htmldemo.net/clothing/clothing/shop.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 01 Feb 2025 03:37:47 GMT -->
</html>

