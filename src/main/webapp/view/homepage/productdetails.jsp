<%-- 
    Document   : productdetails
    Created on : Feb 11, 2025, 12:53:14 PM
    Author     : hung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Single Prodcuts || Clothing</title>
    <meta name="description" content="Clothing – eCommerce Fashion Template is a clean and elegant design – suitable for selling clothing, fashion, high fashion, men fashion, women fashion, accessories, digital, kids, watches, jewelries, shoes, kids, furniture, sports, tools….. It has a fully responsive width adjusts automatically to any screen size or resolution.">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="shortcut icon" type="image/x-icon" href="images/icons/favicon.png">
    <jsp:include page="../common/home/css-home.jsp"></jsp:include>
</head>

<body>
    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->  

    <!-- Body main wrapper start -->
    <div class="wrapper sigle-product">
       
        <!-- Start of header area -->
         <jsp:include page="../common/home/header-homepage.jsp"></jsp:include>
        <!-- End of header area -->
        
        <!--breadcumb area start -->
        <div class="breadcumb-area overlay pos-rltv">
            <div class="bread-main">
                <div class="bred-hading text-center">
                    <h5>Prodcut Details</h5> </div>
                <ol class="breadcrumb">
                    <li class="home"><a title="Go to Home Page" href="index.html">Home</a></li>
                    <li class="active">product-details</li>
                </ol>
            </div>
        </div>
        <!--breadcumb area end -->
        
        <!--single-protfolio-area are start-->
        <div class="single-protfolio-area ptb-70">
          <div class="container">
              <div class="row">
                    <div class="col-lg-7">
                       <div class="portfolio-thumbnil-area">
                        <div class="product-more-views">
                            <div class="tab_thumbnail" data-tabs="tabs">
                                <div class="thumbnail-carousel">
                                    <ul class="nav">
                                       <li>
                                        <a class="active" href="#view11" class="shadow-box" aria-controls="view11" data-bs-toggle="tab"><img src="images/product/01.jpg" alt="" /></a></li>
                                       <li>
                                        <a href="#view22" class="shadow-box" aria-controls="view22" data-bs-toggle="tab"><img src="images/product/02.jpg" alt="" /></a></li>
                                       <li>
                                        <a href="#view33" class="shadow-box" aria-controls="view33" data-bs-toggle="tab"><img src="images/product/03.jpg" alt="" /></a></li>
                                       <li>
                                        <a href="#view44" class="shadow-box" aria-controls="view44" data-bs-toggle="tab"><img src="images/product/04.jpg" alt="" /></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="tab-content active-portfolio-area pos-rltv">
                           <div class="social-tag">
                              <a href="#"><i class="zmdi zmdi-share"></i></a>
                           </div>
                            <div role="tabpanel" class="tab-pane active" id="view11">
                                <div class="product-img">
                                    <a class="fancybox" data-fancybox-group="group" href="images/product/01.jpg"><img src="images/product/01.jpg" alt="Single portfolio" /></a>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="view22">
                                <div class="product-img">
                                    <a class="fancybox" data-fancybox-group="group" href="images/product/02.jpg"><img src="images/product/02.jpg" alt="Single portfolio" /></a>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="view33">
                                <div class="product-img">
                                    <a class="fancybox" data-fancybox-group="group" href="images/product/03.jpg"><img src="images/product/03.jpg" alt="Single portfolio" /></a>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="view44">
                                <div class="product-img">
                                    <a class="fancybox" data-fancybox-group="group" href="images/product/04.jpg"><img src="images/product/04.jpg" alt="Single portfolio" /></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                    <div class="col-lg-5">
                        <div class="single-product-description">
                           <div class="sp-top-des">
                                <h3>GLOB t-SHIRT <span>(Brand)</span></h3>
                                <div class="prodcut-ratting-price">
                                    <div class="prodcut-ratting"> 
                                        <a href="#" tabindex="0"><i class="fa fa-star-o"></i></a> 
                                        <a href="#" tabindex="0"><i class="fa fa-star-o"></i></a> 
                                        <a href="#" tabindex="0"><i class="fa fa-star-o"></i></a> 
                                        <a href="#" tabindex="0"><i class="fa fa-star-o"></i></a> 
                                        <a href="#" tabindex="0"><i class="fa fa-star-o"></i></a> 
                                    </div>
                                    <div class="prodcut-price">
                                        <div class="new-price"> $220 </div>
                                        <div class="old-price"> <del>$250</del> </div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="sp-des">
                                <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum</p>
                            </div>
                            <div class="sp-bottom-des">
                            <div class="single-product-option">
                                <div class="sort product-type">
                                    <label>Color: </label>
                                    <select id="input-sort-color">
                                        <option value="#">Red</option>
                                        <option value="#">Blue</option>
                                        <option value="#">Green</option>
                                        <option value="#">Purple</option>
                                        <option value="#">Yellow</option>
                                        <option value="#">Black</option>
                                        <option value="#">Grey</option>
                                        <option value="#">White</option>
                                        <option value="#" selected>Chose Your Color</option>
                                    </select>
                                </div>
                                <div class="sort product-type">
                                    <label>Size: </label>
                                    <select id="input-sort-size">
                                        <option value="#">S</option>
                                        <option value="#">M</option>
                                        <option value="#">L</option>
                                        <option value="#">XL</option>
                                        <option value="#">XXL</option>
                                        <option value="#" selected="">Chose Your Size</option>
                                    </select>
                                </div>
                            </div>
                            <div class="quantity-area">
                                <label>Qty :</label>
                                <div class="cart-quantity">
                                    <form action="#" method="POST" id="myform">
                                        <div class="product-qty">
                                            <div class="cart-quantity">
                                                <div class="cart-plus-minus">
                                                    <div class="dec qtybutton">-</div>
                                                        <input type="text" value="02" name="qtybutton" class="cart-plus-minus-box">
                                                    <div class="inc qtybutton">+</div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="social-icon socile-icon-style-1">
                                <ul>
                                    <li><a href="#" data-tooltip="Add To Cart" class="add-cart add-cart-text" data-placement="left" tabindex="0">Add To Cart<i class="fa fa-cart-plus"></i></a></li>
                                    <li><a href="#" data-tooltip="Wishlist" class="w-list" tabindex="0"><i class="fa fa-heart-o"></i></a></li>
                                    <li><a href="#" data-tooltip="Compare" class="cpare" tabindex="0"><i class="fa fa-refresh"></i></a></li>
                                    <li><a href="#" data-tooltip="Quick View" class="q-view" data-bs-toggle="modal" data-bs-target=".modal" tabindex="0"><i class="fa fa-eye"></i></a></li>
                                </ul>
                            </div>
                      </div>
                  </div>
              </div>
          </div>  
        </div>
        </div>
        <!--single-protfolio-area are start-->
        
        <!--descripton-area start -->
        <div class="descripton-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="product-area tab-cars-style">
                            <div class="title-tab-product-category row">
                                <div class="col-lg-12 text-center">
                                    <ul class="nav mb-40 heading-style-2" role="tablist">
                                        <li role="presentation"><a href="#newarrival" aria-controls="newarrival" role="tab" data-bs-toggle="tab">Description</a></li>
                                        <li role="presentation"><a class="active" href="#bestsellr" aria-controls="bestsellr" role="tab" data-bs-toggle="tab">Review</a></li>
                                        <li role="presentation"><a href="#specialoffer" aria-controls="specialoffer" role="tab" data-bs-toggle="tab">Tags</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-lg-12">
                                <div class="content-tab-product-category">
                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div role="tabpanel" class="tab-pane fix fade in" id="newarrival">
                                        <div class="review-wraper">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                                                <br> veniam, quis nostrud exercitation.</p>
                                            <h5>ABOUT ME</h5>
                                            <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English</p>
                                            <h5>SIZE & FIT</h5>
                                            <ul>
                                                <li>Model wears: Style Photoliya U2980</li>
                                                <li>Model's height: 185”66</li>
                                            </ul>
                                            <h5>Overview</h5>
                                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.</p>
                                        </div>
                                    </div>
                                    <div role="tabpanel" class="tab-pane fix fade show active" id="bestsellr">
                                        <div class="review-wraper">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim <br> veniam, quis nostrud exercitation.</p>
                                           <h5>SIZE & FIT</h5>
                                           <ul>
                                               <li>Model wears: Style Photoliya U2980</li>
                                               <li>Model's height: 185”66</li>
                                           </ul>
                                            <h5>ABOUT ME</h5>
                                            <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English</p>
                                           <h5>Overview</h5>
                                           <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.</p>
                                        </div>
                                    </div>
                                    <div role="tabpanel" class="tab-pane fix fade in" id="specialoffer">
                                        <ul class="tag-filter">
                                            <li><a href="#">Fashion</a></li>
                                            <li><a href="#">Women</a></li>
                                            <li><a href="#">Winter</a></li>
                                            <li><a href="#">Street Style</a></li>
                                            <li><a href="#">Style</a></li>
                                            <li><a href="#">Shop</a></li>
                                            <li><a href="#">Collection</a></li>
                                            <li><a href="#">Spring 2022</a></li>
                                            <li><a href="#">Street Style</a></li>
                                            <li><a href="#">Style</a></li>
                                            <li><a href="#">Shop</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>    
        <!--descripton-area end--> 
        
        <!--new arrival area start-->
        <div class="new-arrival-area ptb-70">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="heading-title heading-style pos-rltv mb-50 text-center">
                            <h5 class="uppercase">Related Product</h5>
                        </div>
                        <div class="total-new-arrival new-arrival-slider-active carsoule-btn">
                            <div class="product-item">
                                <!-- single product start-->
                                <div class="single-product">
                                    <div class="product-img">
                                        <div class="product-label">
                                            <div class="new">New</div>
                                        </div>
                                        <div class="single-prodcut-img  product-overlay pos-rltv">
                                            <a href="single-product.html"> <img alt="" src="images/product/01.jpg"
                                                    class="primary-image"> <img alt="" src="images/product/02.jpg"
                                                    class="secondary-image"> </a>
                                        </div>
                                        <div class="product-icon socile-icon-tooltip text-center">
                                            <ul>
                                                <li><a href="#" data-tooltip="Add To Cart" class="add-cart"
                                                        data-placement="left"><i class="fa fa-cart-plus"></i></a></li>
                                                <li><a href="#" data-tooltip="Wishlist" class="w-list"><i
                                                            class="fa fa-heart-o"></i></a></li>
                                                <li><a href="#" data-tooltip="Compare" class="cpare"><i
                                                            class="fa fa-refresh"></i></a></li>
                                                <li><a href="#" data-tooltip="Quick View" class="q-view" data-bs-toggle="modal"
                                                        data-bs-target=".modal"><i class="fa fa-eye"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product-text">
                                        <div class="prodcut-name"> <a href="single-product.html">Quisque fringilla</a>
                                        </div>
                                        <div class="prodcut-ratting-price">
                                            <div class="prodcut-price">
                                                <div class="new-price"> $220 </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- single product end-->
                            </div>
                            <div class="product-item">
                                <!-- single product start-->
                                <div class="single-product">
                                    <div class="product-img">
                                        <div class="single-prodcut-img  product-overlay pos-rltv">
                                            <a href="single-product.html"> <img alt="" src="images/product/03.jpg"
                                                    class="primary-image"> <img alt="" src="images/product/04.jpg"
                                                    class="secondary-image"> </a>
                                        </div>
                                        <div class="product-icon socile-icon-tooltip text-center">
                                            <ul>
                                                <li><a href="#" data-tooltip="Add To Cart" class="add-cart"
                                                        data-placement="left"><i class="fa fa-cart-plus"></i></a></li>
                                                <li><a href="#" data-tooltip="Wishlist" class="w-list"><i
                                                            class="fa fa-heart-o"></i></a></li>
                                                <li><a href="#" data-tooltip="Compare" class="cpare"><i
                                                            class="fa fa-refresh"></i></a></li>
                                                <li><a href="#" data-tooltip="Quick View" class="q-view" data-bs-toggle="modal"
                                                        data-bs-target=".modal"><i class="fa fa-eye"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product-text">
                                        <div class="prodcut-name"> <a href="single-product.html">Quisque fringilla</a>
                                        </div>
                                        <div class="prodcut-ratting-price">
                                            <div class="prodcut-price">
                                                <div class="new-price"> $220 </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- single product end-->
                            </div>
                            <div class="product-item">
                                <!-- single product start-->
                                <div class="single-product">
                                    <div class="product-img">
                                        <div class="product-label">
                                            <div class="new">Sale</div>
                                        </div>
                                        <div class="single-prodcut-img  product-overlay pos-rltv">
                                            <a href="single-product.html"> <img alt="" src="images/product/02.jpg"
                                                    class="primary-image"> <img alt="" src="images/product/03.jpg"
                                                    class="secondary-image"> </a>
                                        </div>
                                        <div class="product-icon socile-icon-tooltip text-center">
                                            <ul>
                                                <li><a href="#" data-tooltip="Add To Cart" class="add-cart"
                                                        data-placement="left"><i class="fa fa-cart-plus"></i></a></li>
                                                <li><a href="#" data-tooltip="Wishlist" class="w-list"><i
                                                            class="fa fa-heart-o"></i></a></li>
                                                <li><a href="#" data-tooltip="Compare" class="cpare"><i
                                                            class="fa fa-refresh"></i></a></li>
                                                <li><a href="#" data-tooltip="Quick View" class="q-view" data-bs-toggle="modal"
                                                        data-bs-target=".modal"><i class="fa fa-eye"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product-text">
                                        <div class="prodcut-name"> <a href="single-product.html">Quisque fringilla</a>
                                        </div>
                                        <div class="prodcut-ratting-price">
                                            <div class="prodcut-ratting">
                                                <a href="#"><i class="fa fa-star"></i></a>
                                                <a href="#"><i class="fa fa-star"></i></a>
                                                <a href="#"><i class="fa fa-star"></i></a>
                                                <a href="#"><i class="fa fa-star"></i></a>
                                                <a href="#"><i class="fa fa-star-o"></i></a>
                                            </div>
                                            <div class="prodcut-price">
                                                <div class="new-price"> $220 </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- single product end-->
                            </div>
                            <div class="product-item">
                                <!-- single product start-->
                                <div class="single-product">
                                    <div class="product-img">
                                        <div class="single-prodcut-img  product-overlay pos-rltv">
                                            <a href="single-product.html"> <img alt="" src="images/product/04.jpg"
                                                    class="primary-image"> <img alt="" src="images/product/03.jpg"
                                                    class="secondary-image"> </a>
                                        </div>
                                        <div class="product-icon socile-icon-tooltip text-center">
                                            <ul>
                                                <li><a href="#" data-tooltip="Add To Cart" class="add-cart"
                                                        data-placement="left"><i class="fa fa-cart-plus"></i></a></li>
                                                <li><a href="#" data-tooltip="Wishlist" class="w-list"><i
                                                            class="fa fa-heart-o"></i></a></li>
                                                <li><a href="#" data-tooltip="Compare" class="cpare"><i
                                                            class="fa fa-refresh"></i></a></li>
                                                <li><a href="#" data-tooltip="Quick View" class="q-view" data-bs-toggle="modal"
                                                        data-bs-target=".modal"><i class="fa fa-eye"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product-text">
                                        <div class="prodcut-name"> <a href="single-product.html">Quisque fringilla</a>
                                        </div>
                                        <div class="prodcut-ratting-price">
                                            <div class="prodcut-price">
                                                <div class="new-price"> $220 </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- single product end-->
                            </div>
                            <div class="product-item">
                                <!-- single product start-->
                                <div class="single-product">
                                    <div class="product-img">
                                        <div class="single-prodcut-img  product-overlay pos-rltv">
                                            <a href="single-product.html"> <img alt="" src="images/product/05.jpg"
                                                    class="primary-image"> <img alt="" src="images/product/06.jpg"
                                                    class="secondary-image"> </a>
                                        </div>
                                        <div class="product-icon socile-icon-tooltip text-center">
                                            <ul>
                                                <li><a href="#" data-tooltip="Add To Cart" class="add-cart"
                                                        data-placement="left"><i class="fa fa-cart-plus"></i></a></li>
                                                <li><a href="#" data-tooltip="Wishlist" class="w-list"><i
                                                            class="fa fa-heart-o"></i></a></li>
                                                <li><a href="#" data-tooltip="Compare" class="cpare"><i
                                                            class="fa fa-refresh"></i></a></li>
                                                <li><a href="#" data-tooltip="Quick View" class="q-view" data-bs-toggle="modal"
                                                        data-bs-target=".modal"><i class="fa fa-eye"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product-text">
                                        <div class="prodcut-name"> <a href="single-product.html">Quisque fringilla</a>
                                        </div>
                                        <div class="prodcut-ratting-price">
                                            <div class="prodcut-ratting">
                                                <a href="#"><i class="fa fa-star"></i></a>
                                                <a href="#"><i class="fa fa-star"></i></a>
                                                <a href="#"><i class="fa fa-star"></i></a>
                                                <a href="#"><i class="fa fa-star"></i></a>
                                                <a href="#"><i class="fa fa-star-o"></i></a> </div>
                                            <div class="prodcut-price">
                                                <div class="new-price"> $220 </div>
                                                <div class="old-price"> <del>$250</del> </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- single product end-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--new arrival area end-->
        
        <!-- footer area start-->
        <div class="footer-area ptb-50">
            <div class="container">
                <div class="row">
                    <div class="col-xl-3 col-lg-3 col-md-4">
                        <div class="single-footer contact-us">
                            <div class="footer-title uppercase">
                                <h5>Contact US</h5>
                            </div>
                            <ul>
                                <li>
                                    <div class="contact-icon"> <i class="zmdi zmdi-pin-drop"></i> </div>
                                    <div class="contact-text">
                                        <p>Address: Your address goes here</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="contact-icon"> <i class="zmdi zmdi-email-open"></i> </div>
                                    <div class="contact-text">
                                        <p><span><a href="mailto://demo@example.com">demo@example.com</a></span> <span><a
                                                    href="mailto://info@example.com">info@example.com</a></span></p>
                                    </div>
                                </li>
                                <li>
                                    <div class="contact-icon"> <i class="zmdi zmdi-phone-paused"></i> </div>
                                    <div class="contact-text">
                                        <p><a href="tel://01234567890">01234567890</a> <a href="tel://01234567890">01234567890</a></p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-2 col-md-4">
                        <div class="single-footer informaton-area">
                            <div class="footer-title uppercase">
                                <h5>Information</h5>
                            </div>
                            <div class="informatoin">
                                <ul>
                                    <li><a href="#">My Account</a></li>
                                    <li><a href="#">Order History</a></li>
                                    <li><a href="#">Wishlist</a></li>
                                    <li><a href="#">Returnes</a></li>
                                    <li><a href="#">Private Policy</a></li>
                                    <li><a href="#">Site Map</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-4 d-md-none d-block d-lg-block">
                        <div class="single-footer instagrm-area">
                            <div class="footer-title uppercase">
                                <h5>InstaGram</h5>
                            </div>
                            <div class="instagrm">
                                <ul>
                                    <li><a href="#"><img src="images/gallery/01.jpg" alt=""></a></li>
                                    <li><a href="#"><img src="images/gallery/02.jpg" alt=""></a></li>
                                    <li><a href="#"><img src="images/gallery/03.jpg" alt=""></a></li>
                                    <li><a href="#"><img src="images/gallery/04.jpg" alt=""></a></li>
                                    <li><a href="#"><img src="images/gallery/05.jpg" alt=""></a></li>
                                    <li><a href="#"><img src="images/gallery/06.jpg" alt=""></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-4 offset-xl-1">
                        <div class="single-footer newslatter-area">
                            <div class="footer-title uppercase">
                                <h5>Get Newsletters</h5>
                            </div>
                            <div class="newslatter">
                                <form action="#" method="post">
                                    <div class="input-box pos-rltv">
                                        <input placeholder="Type Your Email hear" type="text">
                                        <a href="#">
                                            <i class="zmdi zmdi-arrow-right"></i>
                                        </a>
                                    </div>
                                </form>
                                <div class="social-icon socile-icon-style-3 mt-40">
                                    <div class="footer-title uppercase">
                                        <h5>Social Network</h5>
                                    </div>
                                    <ul>
                                        <li><a href="#"><i class="zmdi zmdi-facebook"></i></a></li>
                                        <li><a href="#"><i class="zmdi zmdi-linkedin"></i></a></li>
                                        <li><a href="#"><i class="zmdi zmdi-pinterest"></i></a></li>
                                        <li><a href="#"><i class="zmdi zmdi-google"></i></a></li>
                                        <li><a href="#"><i class="zmdi zmdi-twitter"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--footer area start-->
        
        <!--footer bottom area start-->
        <div class="footer-bottom global-table">
            <div class="global-row">
                <div class="global-cell">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6">
                                 <p class="copyrigth text-center">
                    © 2022 <span class="text-capitalize">clothing</span>. Made
                    with <i style="color: #f53400;" class="fa fa-heart"></i>
 by
                    <a  href="https://themeforest.net/user/codecarnival/portfolio">CodeCarnival</a>
                  </p>
                            </div>
                            <div class="col-md-6">
                                <ul class="payment-support text-end">
                                    <li>
                                        <a href="#"><img src="images/icons/pay1.png" alt="" /></a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/icons/pay2.png" alt="" /></a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/icons/pay3.png" alt="" /></a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/icons/pay4.png" alt="" /></a>
                                    </li>
                                    <li>
                                        <a href="#"><img src="images/icons/pay5.png" alt="" /></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--footer bottom area end-->
        


        <!-- QUICKVIEW PRODUCT -->
        <div id="quickview-wrapper">
            <!-- Modal -->
            <div class="modal fade" id="productModal" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        </div>
                        <div class="modal-body">
                            <div class="modal-product">
                              <div class="product-images"> 
                                   <!--modal tab start-->
                                    <div class="portfolio-thumbnil-area-2">
                                        <div class="tab-content active-portfolio-area-2">
                                            <div role="tabpanel" class="tab-pane active" id="view1">
                                                <div class="product-img">
                                                    <a href="#"><img src="images/product/01.jpg" alt="Single portfolio" /></a>
                                                </div>
                                            </div>
                                            <div role="tabpanel" class="tab-pane" id="view2">
                                                <div class="product-img">
                                                    <a href="#"><img src="images/product/02.jpg" alt="Single portfolio" /></a>
                                                </div>
                                            </div>
                                            <div role="tabpanel" class="tab-pane" id="view3">
                                                <div class="product-img">
                                                    <a href="#"><img src="images/product/03.jpg" alt="Single portfolio" /></a>
                                                </div>
                                            </div>
                                            <div role="tabpanel" class="tab-pane" id="view4">
                                                <div class="product-img">
                                                    <a href="#"><img src="images/product/04.jpg" alt="Single portfolio" /></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-more-views-2">
                                            <div class="thumbnail-carousel-modal-2 nav" data-tabs="tabs">
                                                <li class="nav-item" role="presentation">
                                                    <a class="nav-link active" id="view1" data-bs-toggle="tab" href="#view1"
                                                        role="tab" aria-controls="view1" aria-selected="true">
                                                        <img
                                                        src="images/product/01.jpg" alt="" />
                                                    </a>
                                                </li>
                                                <li class="nav-item" role="presentation">
                                                    <a class="nav-link" id="view2" data-bs-toggle="tab" href="#view2"
                                                        role="tab" aria-controls="view2" aria-selected="true">
                                                        <img
                                                        src="images/product/02.jpg" alt="" />
                                                    </a>
                                                </li>
                                                <li class="nav-item" role="presentation">
                                                    <a class="nav-link" id="view3" data-bs-toggle="tab" href="#view3"
                                                        role="tab" aria-controls="view3" aria-selected="true">
                                                        <img
                                                        src="images/product/03.jpg" alt="" />
                                                    </a>
                                                </li>
                                                <li class="nav-item" role="presentation">
                                                    <a class="nav-link" id="view4" data-bs-toggle="tab" href="#view4"
                                                        role="tab" aria-controls="view4" aria-selected="true">
                                                        <img
                                                        src="images/product/04.jpg" alt="" />
                                                    </a>
                                                </li>
                                            </div>
                                        </div>
                                    </div>
                                    </div>
                                    <!--modal tab end-->
                                    <!-- .product-images -->
                                    <div class="product-info">
                                        <h1>Aenean eu tristique</h1>
                                        <div class="price-box-3">
                                            <div class="s-price-box"> <span class="new-price">$160.00</span> <span class="old-price">$190.00</span> </div>
                                        </div> <a href="shop.html" class="see-all">See all features</a>
                                        <div class="quick-add-to-cart">
                                            <form method="post" class="cart">
                                                <div class="numbers-row">
                                                    <input type="number" id="french-hens" value="3" min="1"> </div>
                                                <button class="single_add_to_cart_button" type="submit">Add to cart</button>
                                            </form>
                                        </div>
                                        <div class="quick-desc"> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero.Nam fringilla tristique auctor. </div>
                                        <div class="social-sharing-modal">
                                            <div class="widget widget_socialsharing_widget">
                                                <h3 class="widget-title-modal">Share this product</h3>
                                                <ul class="social-icons-modal">
                                                    <li><a  title="Facebook" href="#" class="facebook m-single-icon"><i class="fa fa-facebook"></i></a></li>
                                                    <li><a  title="Twitter" href="#" class="twitter m-single-icon"><i class="fa fa-twitter"></i></a></li>
                                                    <li><a  title="Pinterest" href="#" class="pinterest m-single-icon"><i class="fa fa-pinterest"></i></a></li>
                                                    <li><a  title="Google +" href="#" class="gplus m-single-icon"><i class="fa fa-google-plus"></i></a></li>
                                                    <li><a  title="LinkedIn" href="#" class="linkedin m-single-icon"><i class="fa fa-linkedin"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- .product-info -->
                                </div>
                                <!-- .modal-product -->
                            </div>
                            <!-- .modal-body -->
                        </div>
                        <!-- .modal-content -->
                    </div>
                    <!-- .modal-dialog -->
                </div>
                <!-- END Modal -->
            </div>
        <!-- END QUICKVIEW PRODUCT -->
        
    </div> 
    <!-- Body main wrapper end -->

    <!-- Placed js at the end of the document so the pages load faster -->

    <!-- jquery latest version -->
     <jsp:include page="../common/home/js-home.jsp"></jsp:include>

</body>


<!-- Mirrored from htmldemo.net/clothing/clothing/single-product.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 01 Feb 2025 03:37:47 GMT -->
</html>