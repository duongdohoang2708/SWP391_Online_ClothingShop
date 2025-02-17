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
                        <ul class="sidebar-submenu">
                            <li>
                                <a href="index.html"><i class="ri-circle-fill circle-icon text-primary-600 w-auto"></i> AI</a>
                            </li>
                            <li>
                                <a href="index-2.html"><i class="ri-circle-fill circle-icon text-warning-main w-auto"></i> CRM</a>
                            </li>
                            <li>
                                <a href="index-3.html"><i class="ri-circle-fill circle-icon text-info-main w-auto"></i> eCommerce</a>
                            </li>
                            <li>
                                <a href="index-4.html"><i class="ri-circle-fill circle-icon text-danger-main w-auto"></i> Cryptocurrency</a>
                            </li>
                            <li>
                                <a href="index-5.html"><i class="ri-circle-fill circle-icon text-success-main w-auto"></i> Investment</a>
                            </li>
                            <li>
                                <a href="index-6.html"><i class="ri-circle-fill circle-icon text-purple w-auto"></i> LMS</a>
                            </li>
                            <li>
                                <a href="index-7.html"><i class="ri-circle-fill circle-icon text-info-main w-auto"></i> NFT & Gaming</a>
                            </li>
                            <li>
                                <a href="index-8.html"><i class="ri-circle-fill circle-icon text-danger-main w-auto"></i> Medical</a>
                            </li>
                            <li>
                                <a href="index-9.html"><i class="ri-circle-fill circle-icon text-purple w-auto"></i> Analytics</a>
                            </li>
                            <li>
                                <a href="index-10.html"><i class="ri-circle-fill circle-icon text-warning-main w-auto"></i> POS & Inventory </a>
                            </li>
                            <li>
                                <a href="index-11.html"><i class="ri-circle-fill circle-icon text-success-main w-auto"></i> Finance & Banking </a>
                            </li>
                            <li>
                                <a href="index-12.html"><i class="ri-circle-fill circle-icon text-danger-main w-auto"></i> Booking System</a>
                            </li>
                        </ul>
                    </li>
                    <li class="sidebar-menu-group-title">Application</li>
                    <li>
                        <a href="email.html">
                            <iconify-icon icon="mage:email" class="menu-icon"></iconify-icon>
                            <span>Email</span>
                        </a>
                    </li>
                    <li>
                        <a href="chat-message.html">
                            <iconify-icon icon="bi:chat-dots" class="menu-icon"></iconify-icon>
                            <span>Chat</span> 
                        </a>
                    </li>
                    <li>
                        <a href="calendar-main.html">
                            <iconify-icon icon="solar:calendar-outline" class="menu-icon"></iconify-icon>
                            <span>Calendar</span> 
                        </a>
                    </li>
                    <li>
                        <a href="kanban.html">
                            <iconify-icon icon="material-symbols:map-outline" class="menu-icon"></iconify-icon>
                            <span>Kanban</span> 
                        </a>
                    </li>
                    <li class="dropdown">
                        <a href="javascript:void(0)">
                            <iconify-icon icon="hugeicons:invoice-03" class="menu-icon"></iconify-icon>
                            <span>Invoice</span> 
                        </a>
                        <ul class="sidebar-submenu">
                            <li>
                                <a href="invoice-list.html"><i class="ri-circle-fill circle-icon text-primary-600 w-auto"></i> List</a>
                            </li>
                            <li>
                                <a href="invoice-preview.html"><i class="ri-circle-fill circle-icon text-warning-main w-auto"></i> Preview</a>
                            </li>
                            <li>
                                <a href="invoice-add.html"><i class="ri-circle-fill circle-icon text-info-main w-auto"></i> Add new</a>
                            </li>
                            <li>
                                <a href="invoice-edit.html"><i class="ri-circle-fill circle-icon text-danger-main w-auto"></i> Edit</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="javascript:void(0)">
                            <i class="ri-robot-2-line text-xl me-14 d-flex w-auto"></i>
                            <span>Ai Application</span> 
                        </a>
                        <ul class="sidebar-submenu">
                            <li>
                                <a href="text-generator.html"><i class="ri-circle-fill circle-icon text-primary-600 w-auto"></i> Text Generator</a>
                            </li>
                            <li>
                                <a href="code-generator.html"><i class="ri-circle-fill circle-icon text-warning-main w-auto"></i> Code Generator</a>
                            </li>
                            <li>
                                <a href="image-generator.html"><i class="ri-circle-fill circle-icon text-info-main w-auto"></i> Image Generator</a>
                            </li>
                            <li>
                                <a href="voice-generator.html"><i class="ri-circle-fill circle-icon text-danger-main w-auto"></i> Voice Generator</a>
                            </li>
                            <li>
                                <a href="video-generator.html"><i class="ri-circle-fill circle-icon text-success-main w-auto"></i> Video Generator</a>
                            </li>
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a href="javascript:void(0)">
                            <i class="ri-btc-line text-xl me-14 d-flex w-auto"></i>
                            <span>Crypto Currency</span> 
                        </a>
                        <ul class="sidebar-submenu">
                            <li>
                                <a href="wallet.html"><i class="ri-circle-fill circle-icon text-primary-600 w-auto"></i> Wallet</a>
                            </li>
                            <li>
                                <a href="marketplace.html"><i class="ri-circle-fill circle-icon text-warning-main w-auto"></i> Marketplace</a>
                            </li>
                            <li>
                                <a href="marketplace-details.html"><i class="ri-circle-fill circle-icon text-warning-main w-auto"></i> Marketplace Details</a>
                            </li>
                            <li>
                                <a href="portfolio.html"><i class="ri-circle-fill circle-icon text-warning-main w-auto"></i> Portfolios</a>
                            </li>
                        </ul>
                    </li>

                    <li class="sidebar-menu-group-title">UI Elements</li> 

                    <li class="dropdown">
                        <a href="javascript:void(0)">
                            <iconify-icon icon="solar:document-text-outline" class="menu-icon"></iconify-icon>
                            <span>Components</span> 
                        </a>
                        <ul class="sidebar-submenu">
                            <li>
                                <a href="typography.html"><i class="ri-circle-fill circle-icon text-primary-600 w-auto"></i> Typography</a>
                            </li>
                            <li>
                                <a href="colors.html"><i class="ri-circle-fill circle-icon text-warning-main w-auto"></i> Colors</a>
                            </li>
                            <li>
                                <a href="button.html"><i class="ri-circle-fill circle-icon text-success-main w-auto"></i> Button</a>
                            </li>
                            <li>
                                <a href="dropdown.html"><i class="ri-circle-fill circle-icon text-lilac-600 w-auto"></i> Dropdown</a>
                            </li>
                            <li>
                                <a href="alert.html"><i class="ri-circle-fill circle-icon text-warning-main w-auto"></i> Alerts</a>
                            </li>
                            <li>
                                <a href="card.html"><i class="ri-circle-fill circle-icon text-danger-main w-auto"></i> Card</a>
                            </li>
                            <li>
                                <a href="carousel.html"><i class="ri-circle-fill circle-icon text-info-main w-auto"></i> Carousel</a>
                            </li>
                            <li>
                                <a href="avatar.html"><i class="ri-circle-fill circle-icon text-success-main w-auto"></i> Avatars</a>
                            </li>
                            <li>
                                <a href="progress.html"><i class="ri-circle-fill circle-icon text-primary-600 w-auto"></i> Progress bar</a>
                            </li>
                            <li>
                                <a href="tabs.html"><i class="ri-circle-fill circle-icon text-warning-main w-auto"></i> Tab & Accordion</a>
                            </li>
                            <li>
                                <a href="pagination.html"><i class="ri-circle-fill circle-icon text-danger-main w-auto"></i> Pagination</a>
                            </li>
                            <li>
                                <a href="badges.html"><i class="ri-circle-fill circle-icon text-info-main w-auto"></i> Badges</a>
                            </li>
                            <li>
                                <a href="tooltip.html"><i class="ri-circle-fill circle-icon text-lilac-600 w-auto"></i> Tooltip & Popover</a>
                            </li>
                            <li>
                                <a href="videos.html"><i class="ri-circle-fill circle-icon text-cyan w-auto"></i> Videos</a>
                            </li>
                            <li>
                                <a href="star-rating.html"><i class="ri-circle-fill circle-icon text-indigo w-auto"></i> Star Ratings</a>
                            </li>
                            <li>
                                <a href="tags.html"><i class="ri-circle-fill circle-icon text-purple w-auto"></i> Tags</a>
                            </li>
                            <li>
                                <a href="list.html"><i class="ri-circle-fill circle-icon text-red w-auto"></i> List</a>
                            </li>
                            <li>
                                <a href="calendar.html"><i class="ri-circle-fill circle-icon text-yellow w-auto"></i> Calendar</a>
                            </li>
                            <li>
                                <a href="radio.html"><i class="ri-circle-fill circle-icon text-orange w-auto"></i> Radio</a>
                            </li>
                            <li>
                                <a href="switch.html"><i class="ri-circle-fill circle-icon text-pink w-auto"></i> Switch</a>
                            </li>
                            <li>
                                <a href="image-upload.html"><i class="ri-circle-fill circle-icon text-primary-600 w-auto"></i> Upload</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="javascript:void(0)">
                            <iconify-icon icon="heroicons:document" class="menu-icon"></iconify-icon>
                            <span>Forms</span> 
                        </a>
                        <ul class="sidebar-submenu">
                            <li>
                                <a href="form.html"><i class="ri-circle-fill circle-icon text-primary-600 w-auto"></i> Input Forms</a>
                            </li>
                            <li>
                                <a href="form-layout.html"><i class="ri-circle-fill circle-icon text-warning-main w-auto"></i> Input Layout</a>
                            </li>
                            <li>
                                <a href="form-validation.html"><i class="ri-circle-fill circle-icon text-success-main w-auto"></i> Form Validation</a>
                            </li>
                            <li>
                                <a href="wizard.html"><i class="ri-circle-fill circle-icon text-danger-main w-auto"></i> Form Wizard</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="javascript:void(0)">
                            <iconify-icon icon="mingcute:storage-line" class="menu-icon"></iconify-icon>
                            <span>Table</span> 
                        </a>
                        <ul class="sidebar-submenu">
                            <li>
                                <a href="table-basic.html"><i class="ri-circle-fill circle-icon text-primary-600 w-auto"></i> Basic Table</a>
                            </li>
                            <li>
                                <a href="table-data.html"><i class="ri-circle-fill circle-icon text-warning-main w-auto"></i> Data Table</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="javascript:void(0)">
                            <iconify-icon icon="solar:pie-chart-outline" class="menu-icon"></iconify-icon>
                            <span>Chart</span> 
                        </a>
                        <ul class="sidebar-submenu">
                            <li>
                                <a href="line-chart.html"><i class="ri-circle-fill circle-icon text-danger-main w-auto"></i> Line Chart</a>
                            </li>
                            <li>
                                <a href="column-chart.html"><i class="ri-circle-fill circle-icon text-warning-main w-auto"></i> Column Chart</a>
                            </li>
                            <li>
                                <a href="pie-chart.html"><i class="ri-circle-fill circle-icon text-success-main w-auto"></i> Pie Chart</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="widgets.html">
                            <iconify-icon icon="fe:vector" class="menu-icon"></iconify-icon>
                            <span>Widgets</span> 
                        </a>
                    </li>
                    <li class="dropdown">
                        <a href="javascript:void(0)">
                            <iconify-icon icon="flowbite:users-group-outline" class="menu-icon"></iconify-icon>
                            <span>Users</span> 
                        </a>
                        <ul class="sidebar-submenu">
                            <li>
                                <a href="users-list.html"><i class="ri-circle-fill circle-icon text-primary-600 w-auto"></i> Users List</a>
                            </li>
                            <li>
                                <a href="users-grid.html"><i class="ri-circle-fill circle-icon text-warning-main w-auto"></i> Users Grid</a>
                            </li>
                            <li>
                                <a href="add-user.html"><i class="ri-circle-fill circle-icon text-info-main w-auto"></i> Add User</a>
                            </li>
                            <li>
                                <a href="view-profile.html"><i class="ri-circle-fill circle-icon text-danger-main w-auto"></i> View Profile</a>
                            </li>
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a href="javascript:void(0)">
                            <i class="ri-user-settings-line text-xl me-14 d-flex w-auto"></i>
                            <span>Role & Access</span> 
                        </a>
                        <ul class="sidebar-submenu">
                            <li>
                                <a href="role-access.html"><i class="ri-circle-fill circle-icon text-primary-600 w-auto"></i> Role & Access</a>
                            </li>
                            <li>
                                <a href="assign-role.html"><i class="ri-circle-fill circle-icon text-warning-main w-auto"></i> Assign Role</a>
                            </li>
                        </ul>
                    </li>

                    <li class="sidebar-menu-group-title">Application</li>

                    <li class="dropdown">
                        <a href="javascript:void(0)">
                            <iconify-icon icon="simple-line-icons:vector" class="menu-icon"></iconify-icon>
                            <span>Authentication</span> 
                        </a>
                        <ul class="sidebar-submenu">
                            <li>
                                <a href="sign-in.html"><i class="ri-circle-fill circle-icon text-primary-600 w-auto"></i> Sign In</a>
                            </li>
                            <li>
                                <a href="sign-up.html"><i class="ri-circle-fill circle-icon text-warning-main w-auto"></i> Sign Up</a>
                            </li>
                            <li>
                                <a href="forgot-password.html"><i class="ri-circle-fill circle-icon text-info-main w-auto"></i> Forgot Password</a>
                            </li>
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a href="javascript:void(0)">
                            <iconify-icon icon="solar:gallery-wide-linear" class="menu-icon"></iconify-icon>
                            <span>Gallery</span> 
                        </a>
                        <ul class="sidebar-submenu">
                            <li>
                                <a href="gallery-grid.html"><i class="ri-circle-fill circle-icon text-primary-600 w-auto"></i> Gallery Grid</a>
                            </li>
                            <li>
                                <a href="gallery.html"><i class="ri-circle-fill circle-icon text-danger-600 w-auto"></i> Gallery Grid Desc</a>
                            </li>
                            <li>
                                <a href="gallery-masonry.html"><i class="ri-circle-fill circle-icon text-info-main w-auto"></i> Gallery Masonry</a>
                            </li>
                            <li>
                                <a href="gallery-hover.html"><i class="ri-circle-fill circle-icon text-info-main w-auto"></i> Gallery Hover Effect</a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <a href="pricing.html">
                            <iconify-icon icon="hugeicons:money-send-square" class="menu-icon"></iconify-icon>
                            <span>Pricing</span> 
                        </a>
                    </li>
                    <li class="dropdown">
                        <a href="javascript:void(0)">
                            <i class="ri-news-line text-xl me-14 d-flex w-auto"></i>
                            <span>Slider</span> 
                        </a>
                        <ul class="sidebar-submenu">
                            <li>
                                <a href="view/maketing/slider_list.jsp"><i class="ri-circle-fill circle-icon text-primary-600 w-auto"></i> Slider list</a>
                            </li>


                            <li>
                                <a href="view/maketing/slider_details.jsp"><i class="ri-circle-fill circle-icon text-warning-main w-auto"></i> Slider Details</a>
                            </li>
                            <li>
                                <a a href="${pageContext.request.contextPath}/manage-story?action=add"><i class="ri-circle-fill circle-icon text-info-main w-auto"></i> Add Slider</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="testimonials.html">
                            <i class="ri-star-line text-xl me-14 d-flex w-auto"></i>
                            <span>Testimonial</span> 
                        </a>
                    </li>
                    <li>
                        <a href="faq.html">
                            <iconify-icon icon="mage:message-question-mark-round" class="menu-icon"></iconify-icon>
                            <span>FAQs</span> 
                        </a>
                    </li>
                    <li>
                        <a href="error.html">
                            <iconify-icon icon="streamline:straight-face" class="menu-icon"></iconify-icon>
                            <span>404</span> 
                        </a>
                    </li>
                    <li>
                        <a href="terms-condition.html">
                            <iconify-icon icon="octicon:info-24" class="menu-icon"></iconify-icon>
                            <span>Terms & Conditions</span> 
                        </a>
                    </li>
                    <li>
                        <a href="coming-soon.html">
                            <i class="ri-rocket-line text-xl me-14 d-flex w-auto"></i>
                            <span>Coming Soon</span> 
                        </a>
                    </li>
                    <li>
                        <a href="access-denied.html">
                            <i class="ri-folder-lock-line text-xl me-14 d-flex w-auto"></i>
                            <span>Access Denied</span> 
                        </a>
                    </li>
                    <li>
                        <a href="maintenance.html">
                            <i class="ri-hammer-line text-xl me-14 d-flex w-auto"></i>
                            <span>Maintenance</span> 
                        </a>
                    </li>
                    <li>
                        <a href="blank-page.html">
                            <i class="ri-checkbox-multiple-blank-line text-xl me-14 d-flex w-auto"></i>
                            <span>Blank Page</span> 
                        </a>
                    </li>
                    <li class="dropdown">
                        <a href="javascript:void(0)">
                            <iconify-icon icon="icon-park-outline:setting-two" class="menu-icon"></iconify-icon>
                            <span>Settings</span> 
                        </a>
                        <ul class="sidebar-submenu">
                            <li>
                                <a href="company.html"><i class="ri-circle-fill circle-icon text-primary-600 w-auto"></i> Company</a>
                            </li>
                            <li>
                                <a href="notification.html"><i class="ri-circle-fill circle-icon text-warning-main w-auto"></i> Notification</a>
                            </li>
                            <li>
                                <a href="notification-alert.html"><i class="ri-circle-fill circle-icon text-info-main w-auto"></i> Notification Alert</a>
                            </li>
                            <li>
                                <a href="theme.html"><i class="ri-circle-fill circle-icon text-danger-main w-auto"></i> Theme</a>
                            </li>
                            <li>
                                <a href="currencies.html"><i class="ri-circle-fill circle-icon text-danger-main w-auto"></i> Currencies</a>
                            </li>
                            <li>
                                <a href="language.html"><i class="ri-circle-fill circle-icon text-danger-main w-auto"></i> Languages</a>
                            </li>
                            <li>
                                <a href="payment-gateway.html"><i class="ri-circle-fill circle-icon text-danger-main w-auto"></i> Payment Gateway</a>
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
                                    <button type="submit" class="btn btn-primary d-flex align-items-center justify-content-center w-100 py-2" style="background: linear-gradient(45deg, #007aff, #0056b3); border: none; border-radius: 8px; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); transition: all 0.3s ease;">
                                        <i class="fa fa-filter me-2"></i> Filter
                                    </button>

                                </div>
                            </div>
                        </form>
                        <div class="row">
                            <div class="col-12">
                                <div class="dashboard__review-table">
                                    <table class="table table-borderless">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Image</th>
                                                <th>Title</th>
                                                <th>Backlink</th>
                                                <th>Status</th>
                                                <th>Description</th>

                                                <th style="text-align: center;">Action</th>
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
                                                <td>${story.backlink}</td>
                                                <td>
                                                    <span class="dashboard__quiz-result ${story.status == 'Active' ? 'text-success' : 'text-danger'}">
                                                        ${story.status}
                                                    </span>
                                                </td>
                                                <td class="description-column">${story.description}</td>
                                                <td>
                                                    <div class="dashboard__review-action">
                                                        <!-- Nút Edit -->
                                                        <a a href="${pageContext.request.contextPath}/manage-story?action=edit&id=${story.storyId}"
                                                           title="Edit">
                                                            <i class="ri-edit-line"></i> <!-- RemixIcon -->
                                                        </a>
                                                        <!-- Nút Deactivate -->
                                                        <a href="javascript:void(0);" onclick="confirmDeactivate(${story.storyId})" 
                                                           title="Deactivate">
                                                            <i class="ri-toggle-line"></i>
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