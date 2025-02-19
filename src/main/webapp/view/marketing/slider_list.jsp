<!-- meta tags and other links -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en" data-theme="light">

    <!-- Mirrored from wowdash.wowtheme7.com/demo/blog.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 03 Feb 2025 04:44:31 GMT -->
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Wowdash - Bootstrap 5 Admin Dashboard HTML Template</title>
        <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/assets/images/favicon.png" sizes="16x16">
        <!-- remix icon font css  -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/remixicon.css">
        <!-- BootStrap css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/lib/bootstrap.min.css">
        <!-- Apex Chart css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/lib/apexcharts.css">
        <!-- Data Table css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/lib/dataTables.min.css">
        <!-- Text Editor css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/lib/editor-katex.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/lib/editor.atom-one-dark.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/lib/editor.quill.snow.css">
        <!-- Date picker css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/lib/flatpickr.min.css">
        <!-- Calendar css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/lib/full-calendar.css">
        <!-- Vector Map css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/lib/jquery-jvectormap-2.0.5.css">
        <!-- Popup css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/lib/magnific-popup.css">
        <!-- Slick Slider css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/lib/slick.css">
        <!-- prism css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/lib/prism.css">
        <!-- file upload css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/lib/file-upload.css">

        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/lib/audioplayer.css">
        <!-- main css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
        <style>
            /*            .description-column {
                            max-width: 300px;  Chiều rộng tối đa 
                            max-height: 300px;  Chiều cao tối đa 
                            min-height: 100px;  Đảm bảo chiều cao tối thiểu để ô luôn đủ lớn 
                            display: flex;
                            overflow: hidden;  Ẩn phần nội dung vượt quá 
                            display: -webkit-box;
                            -webkit-line-clamp: 3;  Giới hạn tối đa 3 dòng 
                            -webkit-box-orient: vertical;
                            white-space: normal;
                            cursor: pointer;  Hiển thị con trỏ khi di chuột vào 
                            padding: 10px;  Giúp ô trông cân đối 
                            word-wrap: break-word;  Đảm bảo xuống dòng 
                            background: white;
                            
                        }
            
                         Khi di chuột vào sẽ hiển thị đầy đủ 
                        .description-column:hover {
                             max-width:300px; 
                            max-height: auto;  Bỏ giới hạn chiều cao 
                            overflow-y: auto;  Chỉ hiển thị thanh cuộn dọc nếu cần 
                overflow-x: hidden;  Ngăn thanh cuộn ngang 
                            white-space: normal;
                            background: #fff;  Có thể thêm nền trắng để dễ đọc 
                            position: absolute;  Hiển thị nội dung nổi lên trên 
                             word-wrap: break-word;  Đảm bảo xuống dòng 
                            z-index: 10;
                            padding: 10px;
                            background: white;*/

            .description-column {
                max-width: 300px;
                max-height: 300px;
                min-height: 250px;
                min-width: 300px;
                overflow-y: auto;  /* Hiển thị thanh cuộn dọc khi nội dung dài */
                overflow-x: hidden; /* Ẩn thanh cuộn ngang */
                white-space: normal;
                word-wrap: break-word; /* Đảm bảo xuống dòng */
                padding: 10px;
                background: #fff; /* Giữ nền trắng */
            }


        </style>






    </head>

    <body>
        <c:url value="/manage-story" var="paginationUrl">
            <c:param name="action" value="list" />
            <c:if test="${not empty param.type}">
                <c:param name="type" value="${param.type}" />
            </c:if>
            <c:if test="${not empty param.status}">
                <c:param name="status" value="${param.status}" />
            </c:if>
            <c:if test="${not empty param.search}">
                <c:param name="search" value="${param.search}" />
            </c:if>
        </c:url>
        <aside class="sidebar">
            <button type="button" class="sidebar-close-btn">
                <iconify-icon icon="radix-icons:cross-2"></iconify-icon>
            </button>
            <div>
                <a href="index.html" class="sidebar-logo">
                    <img src="${pageContext.request.contextPath}/assets/images/logo.png" alt="site logo" class="light-logo">
                    <img src="${pageContext.request.contextPath}/assets/images/logo-light.png" alt="site logo" class="dark-logo">
                    <img src="${pageContext.request.contextPath}/assets/images/logo-icon.png" alt="site logo" class="logo-icon">
                </a>
            </div>
            <div class="sidebar-menu-area">
                <ul class="sidebar-menu" id="sidebar-menu">
                    <li class="dropdown">
                        <a href="javascript:void(0)">
                            <iconify-icon icon="solar:home-smile-angle-outline" class="menu-icon"></iconify-icon>
                            <span>Dashboard</span>
                        </a>

                    </li>


                    <li class="dropdown">
                        <a href="javascript:void(0)">
                            <i class="ri-news-line text-xl me-14 d-flex w-auto"></i>
                            <span>Slider</span> 
                        </a>
                        <ul class="sidebar-submenu">
                            <li>
                                <a href="${pageContext.request.contextPath}/manage-story"><i class="ri-circle-fill circle-icon text-primary-600 w-auto"></i> Slider list</a>
                            </li>

                        </ul>
                    </li>

                </ul>
            </div>
        </aside>

        <main class="dashboard-main">
            <div class="navbar-header">
                <div class="row align-items-center justify-content-between">
                    <div class="col-auto">
                        <div class="d-flex flex-wrap align-items-center gap-4">
                            <button type="button" class="sidebar-toggle">
                                <iconify-icon icon="heroicons:bars-3-solid" class="icon text-2xl non-active"></iconify-icon>
                                <iconify-icon icon="iconoir:arrow-right" class="icon text-2xl active"></iconify-icon>
                            </button>
                            <button type="button" class="sidebar-mobile-toggle">
                                <iconify-icon icon="heroicons:bars-3-solid" class="icon"></iconify-icon>
                            </button>
                            <form class="navbar-search">
                                <input type="text" name="search" placeholder="Search">
                                <iconify-icon icon="ion:search-outline" class="icon"></iconify-icon>
                            </form>
                        </div>
                    </div>
                    <div class="col-auto">
                        <div class="d-flex flex-wrap align-items-center gap-3">
                            <button type="button" data-theme-toggle class="w-40-px h-40-px bg-neutral-200 rounded-circle d-flex justify-content-center align-items-center"></button>
                            <div class="dropdown d-none d-sm-inline-block">
                                <button class="has-indicator w-40-px h-40-px bg-neutral-200 rounded-circle d-flex justify-content-center align-items-center" type="button" data-bs-toggle="dropdown">
                                    <img src="${pageContext.request.contextPath}/assets/images/lang-flag.png" alt="image" class="w-24 h-24 object-fit-cover rounded-circle">
                                </button>
                                <div class="dropdown-menu to-top dropdown-menu-sm">
                                    <div class="py-12 px-16 radius-8 bg-primary-50 mb-16 d-flex align-items-center justify-content-between gap-2">
                                        <div>
                                            <h6 class="text-lg text-primary-light fw-semibold mb-0">Choose Your Language</h6>
                                        </div>
                                    </div>

                                    <div class="max-h-400-px overflow-y-auto scroll-sm pe-8">
                                        <div class="form-check style-check d-flex align-items-center justify-content-between mb-16">
                                            <label class="form-check-label line-height-1 fw-medium text-secondary-light" for="english"> 
                                                <span class="text-black hover-bg-transparent hover-text-primary d-flex align-items-center gap-3"> 
                                                    <img src="${pageContext.request.contextPath}/assets/images/flags/flag1.png" alt="" class="w-36-px h-36-px bg-success-subtle text-success-main rounded-circle flex-shrink-0">
                                                    <span class="text-md fw-semibold mb-0">English</span>
                                                </span>
                                            </label>
                                            <input class="form-check-input" type="radio" name="crypto" id="english">
                                        </div>

                                        <div class="form-check style-check d-flex align-items-center justify-content-between mb-16">
                                            <label class="form-check-label line-height-1 fw-medium text-secondary-light" for="japan"> 
                                                <span class="text-black hover-bg-transparent hover-text-primary d-flex align-items-center gap-3"> 
                                                    <img src="${pageContext.request.contextPath}/assets/images/flags/flag2.png" alt="" class="w-36-px h-36-px bg-success-subtle text-success-main rounded-circle flex-shrink-0">
                                                    <span class="text-md fw-semibold mb-0">Japan</span>
                                                </span>  
                                            </label>
                                            <input class="form-check-input" type="radio" name="crypto" id="japan">
                                        </div>

                                        <div class="form-check style-check d-flex align-items-center justify-content-between mb-16">
                                            <label class="form-check-label line-height-1 fw-medium text-secondary-light" for="france"> 
                                                <span class="text-black hover-bg-transparent hover-text-primary d-flex align-items-center gap-3"> 
                                                    <img src="${pageContext.request.contextPath}/assets/images/flags/flag3.png" alt="" class="w-36-px h-36-px bg-success-subtle text-success-main rounded-circle flex-shrink-0">
                                                    <span class="text-md fw-semibold mb-0">France</span>
                                                </span>  
                                            </label>
                                            <input class="form-check-input" type="radio" name="crypto" id="france">
                                        </div>

                                        <div class="form-check style-check d-flex align-items-center justify-content-between mb-16">
                                            <label class="form-check-label line-height-1 fw-medium text-secondary-light" for="germany"> 
                                                <span class="text-black hover-bg-transparent hover-text-primary d-flex align-items-center gap-3"> 
                                                    <img src="${pageContext.request.contextPath}/assets/images/flags/flag4.png" alt="" class="w-36-px h-36-px bg-success-subtle text-success-main rounded-circle flex-shrink-0">
                                                    <span class="text-md fw-semibold mb-0">Germany</span>
                                                </span>  
                                            </label>
                                            <input class="form-check-input" type="radio" name="crypto" id="germany">
                                        </div>

                                        <div class="form-check style-check d-flex align-items-center justify-content-between mb-16">
                                            <label class="form-check-label line-height-1 fw-medium text-secondary-light" for="korea"> 
                                                <span class="text-black hover-bg-transparent hover-text-primary d-flex align-items-center gap-3"> 
                                                    <img src="${pageContext.request.contextPath}/assets/images/flags/flag5.png" alt="" class="w-36-px h-36-px bg-success-subtle text-success-main rounded-circle flex-shrink-0">
                                                    <span class="text-md fw-semibold mb-0">South Korea</span>
                                                </span>  
                                            </label>
                                            <input class="form-check-input" type="radio" name="crypto" id="korea">
                                        </div>

                                        <div class="form-check style-check d-flex align-items-center justify-content-between mb-16">
                                            <label class="form-check-label line-height-1 fw-medium text-secondary-light" for="bangladesh"> 
                                                <span class="text-black hover-bg-transparent hover-text-primary d-flex align-items-center gap-3"> 
                                                    <img src="${pageContext.request.contextPath}/assets/images/flags/flag6.png" alt="" class="w-36-px h-36-px bg-success-subtle text-success-main rounded-circle flex-shrink-0">
                                                    <span class="text-md fw-semibold mb-0">Bangladesh</span>
                                                </span>  
                                            </label>
                                            <input class="form-check-input" type="radio" name="crypto" id="bangladesh">
                                        </div>

                                        <div class="form-check style-check d-flex align-items-center justify-content-between mb-16">
                                            <label class="form-check-label line-height-1 fw-medium text-secondary-light" for="india"> 
                                                <span class="text-black hover-bg-transparent hover-text-primary d-flex align-items-center gap-3"> 
                                                    <img src="${pageContext.request.contextPath}/assets/images/flags/flag7.png" alt="" class="w-36-px h-36-px bg-success-subtle text-success-main rounded-circle flex-shrink-0">
                                                    <span class="text-md fw-semibold mb-0">India</span>
                                                </span>  
                                            </label>
                                            <input class="form-check-input" type="radio" name="crypto" id="india">
                                        </div>
                                        <div class="form-check style-check d-flex align-items-center justify-content-between">
                                            <label class="form-check-label line-height-1 fw-medium text-secondary-light" for="canada"> 
                                                <span class="text-black hover-bg-transparent hover-text-primary d-flex align-items-center gap-3"> 
                                                    <img src="${pageContext.request.contextPath}/assets/images/flags/flag8.png" alt="" class="w-36-px h-36-px bg-success-subtle text-success-main rounded-circle flex-shrink-0">
                                                    <span class="text-md fw-semibold mb-0">Canada</span>
                                                </span>  
                                            </label>
                                            <input class="form-check-input" type="radio" name="crypto" id="canada">
                                        </div>
                                    </div>
                                </div>
                            </div><!-- Language dropdown end -->

                            <div class="dropdown">
                                <button class="has-indicator w-40-px h-40-px bg-neutral-200 rounded-circle d-flex justify-content-center align-items-center" type="button" data-bs-toggle="dropdown">
                                    <iconify-icon icon="mage:email" class="text-primary-light text-xl"></iconify-icon>
                                </button>
                                <div class="dropdown-menu to-top dropdown-menu-lg p-0">
                                    <div class="m-16 py-12 px-16 radius-8 bg-primary-50 mb-16 d-flex align-items-center justify-content-between gap-2">
                                        <div>
                                            <h6 class="text-lg text-primary-light fw-semibold mb-0">Message</h6>
                                        </div>
                                        <span class="text-primary-600 fw-semibold text-lg w-40-px h-40-px rounded-circle bg-base d-flex justify-content-center align-items-center">05</span>
                                    </div>

                                    <div class="max-h-400-px overflow-y-auto scroll-sm pe-4">

                                        <a href="javascript:void(0)" class="px-24 py-12 d-flex align-items-start gap-3 mb-2 justify-content-between">
                                            <div class="text-black hover-bg-transparent hover-text-primary d-flex align-items-center gap-3"> 
                                                <span class="w-40-px h-40-px rounded-circle flex-shrink-0 position-relative">
                                                    <img src="${pageContext.request.contextPath}/assets/images/notification/profile-3.png" alt="">
                                                    <span class="w-8-px h-8-px bg-success-main rounded-circle position-absolute end-0 bottom-0"></span>
                                                </span> 
                                                <div>
                                                    <h6 class="text-md fw-semibold mb-4">Kathryn Murphy</h6>
                                                    <p class="mb-0 text-sm text-secondary-light text-w-100-px">hey! there i?m...</p>
                                                </div>
                                            </div>
                                            <div class="d-flex flex-column align-items-end"> 
                                                <span class="text-sm text-secondary-light flex-shrink-0">12:30 PM</span>
                                                <span class="mt-4 text-xs text-base w-16-px h-16-px d-flex justify-content-center align-items-center bg-warning-main rounded-circle">8</span>
                                            </div>
                                        </a>

                                        <a href="javascript:void(0)" class="px-24 py-12 d-flex align-items-start gap-3 mb-2 justify-content-between">
                                            <div class="text-black hover-bg-transparent hover-text-primary d-flex align-items-center gap-3"> 
                                                <span class="w-40-px h-40-px rounded-circle flex-shrink-0 position-relative">
                                                    <img src="${pageContext.request.contextPath}/assets/images/notification/profile-4.png" alt="">
                                                    <span class="w-8-px h-8-px  bg-neutral-300 rounded-circle position-absolute end-0 bottom-0"></span>
                                                </span> 
                                                <div>
                                                    <h6 class="text-md fw-semibold mb-4">Kathryn Murphy</h6>
                                                    <p class="mb-0 text-sm text-secondary-light text-w-100-px">hey! there i?m...</p>
                                                </div>
                                            </div>
                                            <div class="d-flex flex-column align-items-end"> 
                                                <span class="text-sm text-secondary-light flex-shrink-0">12:30 PM</span>
                                                <span class="mt-4 text-xs text-base w-16-px h-16-px d-flex justify-content-center align-items-center bg-warning-main rounded-circle">2</span>
                                            </div>
                                        </a>

                                        <a href="javascript:void(0)" class="px-24 py-12 d-flex align-items-start gap-3 mb-2 justify-content-between bg-neutral-50">
                                            <div class="text-black hover-bg-transparent hover-text-primary d-flex align-items-center gap-3"> 
                                                <span class="w-40-px h-40-px rounded-circle flex-shrink-0 position-relative">
                                                    <img src="${pageContext.request.contextPath}/assets/images/notification/profile-5.png" alt="">
                                                    <span class="w-8-px h-8-px bg-success-main rounded-circle position-absolute end-0 bottom-0"></span>
                                                </span> 
                                                <div>
                                                    <h6 class="text-md fw-semibold mb-4">Kathryn Murphy</h6>
                                                    <p class="mb-0 text-sm text-secondary-light text-w-100-px">hey! there i?m...</p>
                                                </div>
                                            </div>
                                            <div class="d-flex flex-column align-items-end"> 
                                                <span class="text-sm text-secondary-light flex-shrink-0">12:30 PM</span>
                                                <span class="mt-4 text-xs text-base w-16-px h-16-px d-flex justify-content-center align-items-center bg-neutral-400 rounded-circle">0</span>
                                            </div>
                                        </a>

                                        <a href="javascript:void(0)" class="px-24 py-12 d-flex align-items-start gap-3 mb-2 justify-content-between bg-neutral-50">
                                            <div class="text-black hover-bg-transparent hover-text-primary d-flex align-items-center gap-3"> 
                                                <span class="w-40-px h-40-px rounded-circle flex-shrink-0 position-relative">
                                                    <img src="${pageContext.request.contextPath}/assets/images/notification/profile-6.png" alt="">
                                                    <span class="w-8-px h-8-px bg-neutral-300 rounded-circle position-absolute end-0 bottom-0"></span>
                                                </span> 
                                                <div>
                                                    <h6 class="text-md fw-semibold mb-4">Kathryn Murphy</h6>
                                                    <p class="mb-0 text-sm text-secondary-light text-w-100-px">hey! there i?m...</p>
                                                </div>
                                            </div>
                                            <div class="d-flex flex-column align-items-end"> 
                                                <span class="text-sm text-secondary-light flex-shrink-0">12:30 PM</span>
                                                <span class="mt-4 text-xs text-base w-16-px h-16-px d-flex justify-content-center align-items-center bg-neutral-400 rounded-circle">0</span>
                                            </div>
                                        </a>

                                        <a href="javascript:void(0)" class="px-24 py-12 d-flex align-items-start gap-3 mb-2 justify-content-between">
                                            <div class="text-black hover-bg-transparent hover-text-primary d-flex align-items-center gap-3"> 
                                                <span class="w-40-px h-40-px rounded-circle flex-shrink-0 position-relative">
                                                    <img src="${pageContext.request.contextPath}/assets/images/notification/profile-7.png" alt="">
                                                    <span class="w-8-px h-8-px bg-success-main rounded-circle position-absolute end-0 bottom-0"></span>
                                                </span> 
                                                <div>
                                                    <h6 class="text-md fw-semibold mb-4">Kathryn Murphy</h6>
                                                    <p class="mb-0 text-sm text-secondary-light text-w-100-px">hey! there i?m...</p>
                                                </div>
                                            </div>
                                            <div class="d-flex flex-column align-items-end"> 
                                                <span class="text-sm text-secondary-light flex-shrink-0">12:30 PM</span>
                                                <span class="mt-4 text-xs text-base w-16-px h-16-px d-flex justify-content-center align-items-center bg-warning-main rounded-circle">8</span>
                                            </div>
                                        </a>

                                    </div>
                                    <div class="text-center py-12 px-16"> 
                                        <a href="javascript:void(0)" class="text-primary-600 fw-semibold text-md">See All Message</a>
                                    </div>
                                </div>
                            </div><!-- Message dropdown end -->

                            <div class="dropdown">
                                <button class="has-indicator w-40-px h-40-px bg-neutral-200 rounded-circle d-flex justify-content-center align-items-center" type="button" data-bs-toggle="dropdown">
                                    <iconify-icon icon="iconoir:bell" class="text-primary-light text-xl"></iconify-icon>
                                </button>
                                <div class="dropdown-menu to-top dropdown-menu-lg p-0">
                                    <div class="m-16 py-12 px-16 radius-8 bg-primary-50 mb-16 d-flex align-items-center justify-content-between gap-2">
                                        <div>
                                            <h6 class="text-lg text-primary-light fw-semibold mb-0">Notifications</h6>
                                        </div>
                                        <span class="text-primary-600 fw-semibold text-lg w-40-px h-40-px rounded-circle bg-base d-flex justify-content-center align-items-center">05</span>
                                    </div>

                                    <div class="max-h-400-px overflow-y-auto scroll-sm pe-4">
                                        <a href="javascript:void(0)" class="px-24 py-12 d-flex align-items-start gap-3 mb-2 justify-content-between">
                                            <div class="text-black hover-bg-transparent hover-text-primary d-flex align-items-center gap-3"> 
                                                <span class="w-44-px h-44-px bg-success-subtle text-success-main rounded-circle d-flex justify-content-center align-items-center flex-shrink-0">
                                                    <iconify-icon icon="bitcoin-icons:verify-outline" class="icon text-xxl"></iconify-icon>
                                                </span> 
                                                <div>
                                                    <h6 class="text-md fw-semibold mb-4">Congratulations</h6>
                                                    <p class="mb-0 text-sm text-secondary-light text-w-200-px">Your profile has been Verified. Your profile has been Verified</p>
                                                </div>
                                            </div>
                                            <span class="text-sm text-secondary-light flex-shrink-0">23 Mins ago</span>
                                        </a>

                                        <a href="javascript:void(0)" class="px-24 py-12 d-flex align-items-start gap-3 mb-2 justify-content-between bg-neutral-50">
                                            <div class="text-black hover-bg-transparent hover-text-primary d-flex align-items-center gap-3"> 
                                                <span class="w-44-px h-44-px bg-success-subtle text-success-main rounded-circle d-flex justify-content-center align-items-center flex-shrink-0">
                                                    <img src="${pageContext.request.contextPath}/assets/images/notification/profile-1.png" alt="">
                                                </span> 
                                                <div>
                                                    <h6 class="text-md fw-semibold mb-4">Ronald Richards</h6>
                                                    <p class="mb-0 text-sm text-secondary-light text-w-200-px">You can stitch between artboards</p>
                                                </div>
                                            </div>
                                            <span class="text-sm text-secondary-light flex-shrink-0">23 Mins ago</span>
                                        </a>

                                        <a href="javascript:void(0)" class="px-24 py-12 d-flex align-items-start gap-3 mb-2 justify-content-between">
                                            <div class="text-black hover-bg-transparent hover-text-primary d-flex align-items-center gap-3"> 
                                                <span class="w-44-px h-44-px bg-info-subtle text-info-main rounded-circle d-flex justify-content-center align-items-center flex-shrink-0">
                                                    AM
                                                </span> 
                                                <div>
                                                    <h6 class="text-md fw-semibold mb-4">Arlene McCoy</h6>
                                                    <p class="mb-0 text-sm text-secondary-light text-w-200-px">Invite you to prototyping</p>
                                                </div>
                                            </div>
                                            <span class="text-sm text-secondary-light flex-shrink-0">23 Mins ago</span>
                                        </a>

                                        <a href="javascript:void(0)" class="px-24 py-12 d-flex align-items-start gap-3 mb-2 justify-content-between bg-neutral-50">
                                            <div class="text-black hover-bg-transparent hover-text-primary d-flex align-items-center gap-3"> 
                                                <span class="w-44-px h-44-px bg-success-subtle text-success-main rounded-circle d-flex justify-content-center align-items-center flex-shrink-0">
                                                    <img src="${pageContext.request.contextPath}/assets/images/notification/profile-2.png" alt="">
                                                </span> 
                                                <div>
                                                    <h6 class="text-md fw-semibold mb-4">Annette Black</h6>
                                                    <p class="mb-0 text-sm text-secondary-light text-w-200-px">Invite you to prototyping</p>
                                                </div>
                                            </div>
                                            <span class="text-sm text-secondary-light flex-shrink-0">23 Mins ago</span>
                                        </a>

                                        <a href="javascript:void(0)" class="px-24 py-12 d-flex align-items-start gap-3 mb-2 justify-content-between">
                                            <div class="text-black hover-bg-transparent hover-text-primary d-flex align-items-center gap-3"> 
                                                <span class="w-44-px h-44-px bg-info-subtle text-info-main rounded-circle d-flex justify-content-center align-items-center flex-shrink-0">
                                                    DR
                                                </span> 
                                                <div>
                                                    <h6 class="text-md fw-semibold mb-4">Darlene Robertson</h6>
                                                    <p class="mb-0 text-sm text-secondary-light text-w-200-px">Invite you to prototyping</p>
                                                </div>
                                            </div>
                                            <span class="text-sm text-secondary-light flex-shrink-0">23 Mins ago</span>
                                        </a>
                                    </div>

                                    <div class="text-center py-12 px-16"> 
                                        <a href="javascript:void(0)" class="text-primary-600 fw-semibold text-md">See All Notification</a>
                                    </div>

                                </div>
                            </div><!-- Notification dropdown end -->

                            <div class="dropdown">
                                <button class="d-flex justify-content-center align-items-center rounded-circle" type="button" data-bs-toggle="dropdown">
                                    <img src="${pageContext.request.contextPath}/assets/images/user.png" alt="image" class="w-40-px h-40-px object-fit-cover rounded-circle">
                                </button>
                                <div class="dropdown-menu to-top dropdown-menu-sm">
                                    <div class="py-12 px-16 radius-8 bg-primary-50 mb-16 d-flex align-items-center justify-content-between gap-2">
                                        <div>
                                            <h6 class="text-lg text-primary-light fw-semibold mb-2">Shaidul Islam</h6>
                                            <span class="text-secondary-light fw-medium text-sm">Admin</span>
                                        </div>
                                        <button type="button" class="hover-text-danger">
                                            <iconify-icon icon="radix-icons:cross-1" class="icon text-xl"></iconify-icon> 
                                        </button>
                                    </div>
                                    <ul class="to-top-list">
                                        <li>
                                            <a class="dropdown-item text-black px-0 py-8 hover-bg-transparent hover-text-primary d-flex align-items-center gap-3" href="view-profile.html"> 
                                                <iconify-icon icon="solar:user-linear" class="icon text-xl"></iconify-icon>  My Profile</a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item text-black px-0 py-8 hover-bg-transparent hover-text-primary d-flex align-items-center gap-3" href="email.html"> 
                                                <iconify-icon icon="tabler:message-check" class="icon text-xl"></iconify-icon>  Inbox</a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item text-black px-0 py-8 hover-bg-transparent hover-text-primary d-flex align-items-center gap-3" href="company.html"> 
                                                <iconify-icon icon="icon-park-outline:setting-two" class="icon text-xl"></iconify-icon>  Setting</a>
                                        </li>
                                        <li>
                                            <a class="dropdown-item text-black px-0 py-8 hover-bg-transparent hover-text-danger d-flex align-items-center gap-3" href="javascript:void(0)"> 
                                                <iconify-icon icon="lucide:power" class="icon text-xl"></iconify-icon>  Log Out</a>
                                        </li>
                                    </ul>
                                </div>
                            </div><!-- Profile dropdown end -->
                        </div>
                    </div>
                </div>
            </div> 

            <div class="dashboard-main-body">
                <div class="d-flex flex-wrap align-items-center justify-content-between gap-3 mb-24">
                    <!--  <h6 class="fw-semibold mb-0">Sl</h6>-->
                    <ul class="d-flex align-items-center gap-2">
                        <li class="fw-medium">
                            <a href="index.html" class="d-flex align-items-center gap-1 hover-text-primary">
                                <iconify-icon icon="solar:home-smile-angle-outline" class="icon text-lg"></iconify-icon>
                                Dashboard
                            </a>
                        </li>
                        <li>-</li>
                        <li class="fw-medium">Slider</li>
                    </ul>
                </div>
                <!-- table here-->
                <div class="dashboard__content-wrap">
                    <div class="dashboard__content-title">
                        <div class="title d-flex justify-content-between align-items-center">
                            <h4>Manage Sliders</h4>

                        </div>
                        <form action="${pageContext.request.contextPath}/manage-story" method="GET" class="mb-4">
                            <input type="hidden" name="action" value="list"/>
                            <div class="row mb-3">
                                <div class="col-md-4">
                                    <select class="form-select" id="statusFilter" name="status">
                                        <option value="">All Status</option>
                                        <option value="Active" ${param.status=='Active' ? 'selected'
                                                                 : '' }>Active</option>
                                        <option value="Inactive" ${param.status=='Inactive' ? 'selected'
                                                                   : '' }>Inactive</option>
                                    </select>
                                </div>
                                <div class="col-md-4">
                                    <input type="text" class="form-control" id="searchFilter"
                                           name="search" placeholder="Search sliders..."
                                           value="${param.search}">
                                </div>
                                <div class="col-md-3">
                                    <!-- Nút Filter -->
                                    <button type="submit" class="btn btn-primary d-flex align-items-center justify-content-center w-100 py-2" 
                                            style="background: linear-gradient(45deg, #007aff, #0056b3); border: none; border-radius: 8px;
                                            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); transition: all 0.3s ease;">
                                        <i class="fa fa-filter me-2"></i> Filter
                                    </button>

                                    <!-- Nút Add Slider -->
                                    <a href="${pageContext.request.contextPath}/manage-story?action=add" 
                                       class="btn btn-success d-flex align-items-center justify-content-center w-100 py-2 mt-2"
                                       style="background: linear-gradient(45deg, #28a745, #218838); border: none; border-radius: 8px;
                                       box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); transition: all 0.3s ease;">
                                        <i class="ri-add-circle-line me-2"></i> Add Slider
                                    </a>
                                </div>

                            </div>
                        </form>
                        <div class="row">
                            <div class="col-12">
                                <div class="dashboard__review-table">
                                    <table class="table table-borderless">
                                        <thead>
                                            <tr>
                                                <th style="width: 5%;">ID</th>
                                                <th style="width: 10%;">Image</th>
                                                <th style="width: 15%;">Title</th>
                                                <th style="width: 20%;">Backlink</th>
                                                <th style="width: 10%;">Status</th>
                                                <th style="width: 25%;">Description</th>

                                                <th style="width: 10%; text-align: center;">Action</th>
                                            </tr>
                                        </thead>

                                        <c:forEach var="story" items="${stories}">
                                            <tr>
                                                <td>${story.storyId}</td>
                                                <td>
                                                    <img src="${pageContext.request.contextPath}/${story.thumbnail}" 
                                                         alt="Story image" class="img-thumbnail" 
                                                         style="width: 100px; height: 60px; object-fit: cover;">
                                                </td>
                                                <td>${story.title}</td>
                                                <td>
                                                    <a href="${story.backlink}" target="_blank" class="text-primary">
                                                        ${story.backlink}
                                                    </a>
                                                </td>

                                                <td>
                                                    <span class="dashboard__quiz-result ${story.status == 'Active' ? 'text-success' : 'text-danger'}">
                                                        ${story.status}
                                                    </span>
                                                </td>
                                                <td class="description-column">
                                                    ${story.description}
                                                </td>
                                                <td>
                                                    <div class="dashboard__review-action">
                                                        <!-- Nút Edit -->
                                                        <a  href="${pageContext.request.contextPath}/manage-story?action=edit&id=${story.storyId}"
                                                            title="Edit">
                                                            <i class="ri-edit-line fs-3"></i>

                                                        </a>
                                                        <!-- Nút Deactivate -->
                                                        <a href="javascript:void(0);" onclick="confirmDeactivate(${story.storyId})" 
                                                           title="Deactivate">
                                                            <i class="ri-toggle-line"></i>
                                                        </a>
                                                        <a href="${pageContext.request.contextPath}/manage-story?action=delete&id=${story.storyId}" 
                                                           title="Delete">
                                                            <i class="ri-delete-bin-line fs-3" style="color: red;"></i>
                                                        </a>
                                                    </div>
                                                </td>
                                            </tr>
                                        </c:forEach>

                                    </table>
                                </div>

                                <!-- Pagination -->
                                <nav aria-label="Page navigation" style="margin-top: 30px">
                                    <ul class="pagination justify-content-center">
                                        <c:if test="${currentPage > 1}">
                                            <li class="page-item">
                                                <a class="page-link"
                                                   href="${paginationUrl}&page=${currentPage - 1}"
                                                   aria-label="Previous">
                                                    <span aria-hidden="true">&laquo;</span>
                                                </a>
                                            </li>
                                        </c:if>

                                        <c:forEach begin="1" end="${totalPages}" var="i">
                                            <li class="page-item ${currentPage == i ? 'active' : ''}">
                                                <a class="page-link"
                                                   href="${paginationUrl}&page=${i}">${i}</a>
                                            </li>
                                        </c:forEach>

                                        <c:if test="${currentPage < totalPages}">
                                            <li class="page-item">
                                                <a class="page-link"
                                                   href="${paginationUrl}&page=${currentPage + 1}"
                                                   aria-label="Next">
                                                    <span aria-hidden="true">&raquo;</span>
                                                </a>
                                            </li>
                                        </c:if>
                                    </ul>
                                </nav>

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
                    <script>
                        function confirmDeactivate(storyId) {
                            if (confirm("Are you sure you want to deactivate this slider?")) {
                                window.location.href = '${pageContext.request.contextPath}/manage-story?action=deactivate&id=' + storyId;
                            }
                        }


                    </script>

                    <script>
                        // Toast message display
                        var toastMessage = "${sessionScope.toastMessage}";
                        var toastType = "${sessionScope.toastType}";
                        if (toastMessage) {
                            iziToast.show({
                                title: toastType === 'success' ? 'Success' : 'Error',
                                message: toastMessage,
                                position: 'topRight',
                                color: toastType === 'success' ? 'green' : 'red',
                                timeout: 5000,
                                onClosing: function () {
                                    // Remove toast attributes from the session after displaying
                                    fetch('${pageContext.request.contextPath}/remove-toast', {
                                        method: 'POST',
                                        headers: {
                                            'Content-Type': 'application/x-www-form-urlencoded',
                                        },
                                    }).then(response => {
                                        if (!response.ok) {
                                            console.error('Failed to remove toast attributes');
                                        }
                                    }).catch(error => {
                                        console.error('Error:', error);
                                    });
                                }
                            });
                        }
                    </script>
                    <!-- jQuery library js -->
                    <script src="${pageContext.request.contextPath}/assets/js/lib/jquery-3.7.1.min.js"></script>
                    <!-- Bootstrap js -->
                    <script src="${pageContext.request.contextPath}/assets/js/lib/bootstrap.bundle.min.js"></script>
                    <!-- Apex Chart js -->
                    <script src="${pageContext.request.contextPath}/assets/js/lib/apexcharts.min.js"></script>
                    <!-- Data Table js -->
                    <script src="${pageContext.request.contextPath}/assets/js/lib/dataTables.min.js"></script>
                    <!-- Iconify Font js -->
                    <script src="${pageContext.request.contextPath}/assets/js/lib/iconify-icon.min.js"></script>
                    <!-- jQuery UI js -->
                    <script src="${pageContext.request.contextPath}/assets/js/lib/jquery-ui.min.js"></script>
                    <!-- Vector Map js -->
                    <script src="${pageContext.request.contextPath}/assets/js/lib/jquery-jvectormap-2.0.5.min.js"></script>
                    <script src="${pageContext.request.contextPath}/assets/js/lib/jquery-jvectormap-world-mill-en.js"></script>
                    <!-- Popup js -->
                    <script src="${pageContext.request.contextPath}/assets/js/lib/magnifc-popup.min.js"></script>
                    <!-- Slick Slider js -->
                    <script src="${pageContext.request.contextPath}/assets/js/lib/slick.min.js"></script>
                    <!-- prism js -->
                    <script src="${pageContext.request.contextPath}/assets/js/lib/prism.js"></script>
                    <!-- file upload js -->
                    <script src="${pageContext.request.contextPath}/assets/js/lib/file-upload.js"></script>
                    <!-- audioplayer -->
                    <script src="${pageContext.request.contextPath}/assets/js/lib/audioplayer.js"></script>

                    <!-- main js -->
                    <script src="${pageContext.request.contextPath}/assets/js/app.js"></script>

                    </body>

                    <!-- Mirrored from wowdash.wowtheme7.com/demo/blog.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 03 Feb 2025 04:44:34 GMT -->
                    </html>