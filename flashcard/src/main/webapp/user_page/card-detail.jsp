<%--
  Created by IntelliJ IDEA.
  User: MyPC
  Date: 5/7/2022
  Time: 2:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${title}</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" />
    <link rel="stylesheet" href="user_page/assets/css/header.css">
    <link rel="stylesheet" href="user_page/assets/css/term_details.css">
    <link rel="stylesheet" href="user_page/assets/css/base.css">
    <link rel="stylesheet" href="user_page/assets/css/responsive.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap&subset=vietnamese"
          rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<body>
<header>
    <div class="container-fluid">
        <div class="row">
            <div class="navbar">
                <!-- right element -->
                <div class="navbar__left">
                    <div class="navbar__logo">
                        <img src="user_page/assets/img/logo.png" alt="">
                    </div>

                    <div class="navbar__menu">
                        <ul class="navbar__menu-list">
                            <li class="navbar__menu-item">
                                <a href="#" class="navbar__menu-link active">
                                    <span class="navbar__menu-text">Trang chủ</span>
                                </a>
                            </li>
                            <li class="navbar__menu-item ">
                                <button class="navbar__menu-link btn-item" id="navbar__library-btn">
                                        <span class="navbar__menu-text">
                                            Thư viện của bạn
                                            <i class="fas fa-angle-down"></i>
                                        </span>
                                </button>
                            </li>
                            <div class="navbar__library" id="navbar__library" style="display: none">
                                <div class="navbar__library-header">
                                    <ul class="navbar__library-tab">
                                        <li class="navbar__library-tab-item ">
                                            <button class="navbar__library-tab-btn" id="library__tab-term">
                                                Học phần
                                            </button>

                                        </li>
                                        <li class="navbar__library-tab-item active">
                                            <button class="navbar__library-tab-btn" id="library__tab-folder">
                                                Thư mục
                                            </button>
                                        </li>
                                        <li class="navbar__library-tab-item">
                                            <button class="navbar__library-tab-btn" id="library__tab-class">
                                                Lớp học
                                            </button>
                                        </li>
                                    </ul>
                                </div>
                                <div class="navbar__library-content">

                                    <!-- list term -->

                                    <div id="library-term" class="library__tab-content" style="display: none">
                                        <div class="navbar__library-not-null">
                                            <div class="navbar__library-term">
                                                <ul class="navbar__library-term-list">
                                                    <li class="navbar__library-term-item">
                                                        <a href="#" class="navbar__library-term-link">
                                                                <span class="navbar__library-term-text">
                                                                    Học phần 1
                                                                </span>
                                                            <div class="navbar__term-author">
                                                                <img class="navbar__term-author-img"
                                                                     src="user_page/assets/img/avatar.jpg" alt="">
                                                                <span class="navbar__term-author-name">
                                                                        Nguyễn Văn A
                                                                    </span>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <li class="navbar__library-term-item">
                                                        <a href="#" class="navbar__library-term-link">
                                                                <span class="navbar__library-term-text">
                                                                    Học phần 1
                                                                </span>
                                                            <div class="navbar__term-author">
                                                                <img class="navbar__term-author-img"
                                                                     src="user_page/assets/img/avatar.jpg" alt="">
                                                                <span class="navbar__term-author-name">
                                                                        Nguyễn Văn A
                                                                    </span>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <li class="navbar__library-term-item">
                                                        <a href="#" class="navbar__library-term-link">
                                                                <span class="navbar__library-term-text">
                                                                    Học phần 1
                                                                </span>
                                                            <div class="navbar__term-author">
                                                                <img class="navbar__term-author-img"
                                                                     src="user_page/assets/img/avatar.jpg" alt="">
                                                                <span class="navbar__term-author-name">
                                                                        Nguyễn Văn A
                                                                    </span>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <li class="navbar__library-term-item">
                                                        <a href="#" class="navbar__library-term-link">
                                                                <span class="navbar__library-term-text">
                                                                    Học phần 1
                                                                </span>
                                                            <div class="navbar__term-author">
                                                                <img class="navbar__term-author-img"
                                                                     src="user_page/assets/img/avatar.jpg" alt="">
                                                                <span class="navbar__term-author-name">
                                                                        Nguyễn Văn A
                                                                    </span>
                                                            </div>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="navbar__library-footer">
                                                <a href="#">Xem tất cả học phần</a>
                                            </div>
                                        </div>

                                        <!-- use for list term is null -->

                                        <div class="navbar__library-null" style="display: none">
                                            <div class="navbar__library-null-content">
                                                <img class="navbar__library-null-img"
                                                     src="./assets/img/null-term.png" alt="">

                                                <p class="navbar__library-null-text">
                                                    Tìm kiếm một chủ đề hoặc lớp học để tìm các học phần có
                                                    liên
                                                    quan.
                                                </p>
                                                <a class="navbar__library-null-link" href="#">
                                                    Tìm học phần
                                                </a>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- list folder -->

                                    <div id="library-folder" class="library__tab-content">
                                        <div class="navbar__library-not-null" style="display: none">

                                            <div class="navbar__library-folder">
                                                <ul class="navbar__library-folder-list">
                                                    <li class="navbar__library-folder-item">
                                                        <a href="#" class="navbar__library-folder-link">
                                                            <p class="navbar__library-folder-name">
                                                                hom nay toi dang lam template website cho
                                                                mon do
                                                                an
                                                                cho mon do an chuyen nganh
                                                            </p>
                                                            <p class="navbar__library-folder-des">
                                                                0 học phần
                                                            </p>
                                                        </a>
                                                    </li>
                                                    <li class="navbar__library-folder-item">
                                                        <a href="#" class="navbar__library-folder-link">
                                                            <p class="navbar__library-folder-name">
                                                                hom nay toi dang lam template website cho
                                                                mon do
                                                                an
                                                                cho mon do an chuyen nganh
                                                            </p>
                                                            <p class="navbar__library-folder-des">
                                                                0 học phần
                                                            </p>
                                                        </a>
                                                    </li>

                                                </ul>
                                            </div>
                                            <div class="navbar__library-footer">
                                                <a href="#">Xem tất cả thư mục</a>
                                            </div>
                                        </div>

                                        <!-- use for list folder is null -->

                                        <div class="navbar__library-null">
                                            <div class="navbar__library-null-content">
                                                <img class="navbar__library-null-img"
                                                     src="./assets/img/null-folder.png" alt="">

                                                <p class="navbar__library-null-text">
                                                    Sắp xếp tất cả các học phần đang học cho một môn cụ thể.
                                                </p>
                                                <a class="navbar__library-null-link" href="#">
                                                    Tạo thư mục
                                                </a>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- list class -->

                                    <div id="library-class" class="library__tab-content" style="display: none">

                                        <div class="navbar__library-not-null">
                                            <div class="navbar__library-class">
                                                <ul class="navbar__library-class-list">
                                                    <li class="navbar__library-class-item">
                                                        <a href="#" class="navbar__library-class-link">
                                                                <span class="navbar__library-class-text">
                                                                    Lớp học 1
                                                                </span>
                                                            <div class="navbar__class-author">
                                                                <img class="navbar__class-author-img"
                                                                     src="user_page/assets/img/avatar.jpg" alt="">
                                                                <span class="navbar__class-author-name">
                                                                        Nguyễn Văn A
                                                                    </span>
                                                            </div>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>

                                            <div class="navbar__library-footer">
                                                <a href="#">Xem tất cả lớp học</a>
                                            </div>
                                        </div>

                                        <!-- use for list class is null -->

                                        <div class="navbar__library-null" style="display: none">
                                            <div class="navbar__library-null-content">
                                                <img class="navbar__library-null-img"
                                                     src="./assets/img/null-class.png" alt="">

                                                <p class="navbar__library-null-text">
                                                    Tìm lớp học của giáo viên của bạn trên Quizlet.
                                                </p>
                                                <a class="navbar__library-null-link" href="#">
                                                    Tìm một lớp học
                                                </a>
                                            </div>
                                        </div>
                                    </div>


                                </div>

                            </div>
                        </ul>

                        <button class="navbar__menu-btn" id="navbar__menu-create-btn">
                                <span class="navbar__menu-text">
                                    Tạo
                                    <i class="fas fa-angle-down"></i>
                                </span>
                            <div class="navbar__create-menu" id="navbar__create-menu" style="display: none">
                                <ul class="navbar__create-menu-list">
                                    <li class="navbar__create-menu-item">
                                        <a href="#" class="navbar__create-menu-link">
                                            <i class="far fa-clone"></i>
                                            <span class="navbar__create-menu-text">
                                                    Học phần
                                                </span>
                                        </a>
                                    </li>

                                    <li class="navbar__create-menu-item">
                                        <a href="#" class="navbar__create-menu-link">
                                            <i class="far fa-folder"></i>
                                            <span class="navbar__create-menu-text">
                                                    Thư mục
                                                </span>
                                        </a>
                                    </li>
                                    <li class="navbar__create-menu-item">
                                        <a href="#" class="navbar__create-menu-link">
                                            <i class="fas fa-user-friends"></i>
                                            <span class="navbar__create-menu-text">
                                                    Lớp
                                                </span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </button>

                    </div>
                </div>

                <!-- left element -->
                <div class="navbar__right">
                    <div class="navbar__search">
                        <button class="navbar__search-btn"><i class="fas fa-search"></i></button>
                        <input type="text" class="navbar__search-input" placeholder="Học phần, câu hỏi">
                    </div>
                    <div class="navbar__notify">
                        <button class="navbar__notify-btn"><i class="far fa-bell"></i></button>
                    </div>
                    <div class="navbar__user" id="navbar__user">
                        <button class="navbar__user-btn">
                            <img id="navbar__user-btn" src="./assets/img/avatar.jpg" alt="">
                        </button>

                        <div class="navbar__user-menu" id="navbar__user-menu" style="display: none">
                            <div class="navbar__user-header">
                                <img class="navbar__user-img" src="user_page/assets/img/avatar.jpg" alt="">
                                <div class="navbar_user-infor">
                                    <p class="navbar__user-name">
                                        Nguyễn Văn A
                                    </p>
                                    <p class="navbar__user-email">
                                        dukhanhqt@gmail.comffffffffff
                                    </p>
                                </div>
                            </div>

                            <div class="nav__user-line-spread"></div>

                            <ul class="navbar__user-items">
                                <li class="navbar__user-item">
                                    <a href="#" class="navbar__user-link">
                                        Hồ sơ
                                    </a>
                                </li>
                                <li class="navbar__user-item">
                                    <a href="#" class="navbar__user-link">
                                        Tiến độ
                                    </a>
                                </li>
                                <li class="navbar__user-item">
                                    <a href="#" class="navbar__user-link">
                                        <button>
                                            Chế độ ban đêm <i class="fas fa-toggle-on"></i>
                                        </button>
                                    </a>
                                </li>
                                <li class="navbar__user-item">
                                    <a href="#" class="navbar__user-link">
                                        Cài đặt
                                    </a>
                                </li>

                                <div class="nav__user-line-spread"></div>

                                <li class="navbar__user-item">
                                    <a href="#" class="navbar__user-link">
                                        Giới thiệu bạn bè
                                    </a>
                                </li>
                                <li class="navbar__user-item">
                                    <a href="#" class="navbar__user-link">
                                        Giúp đỡ và phản hồi
                                    </a>
                                </li>
                                <li class="navbar__user-item">
                                    <a href="#" class="navbar__user-link">
                                        Ứng dụng di dộng
                                    </a>
                                </li>
                                <li class="navbar__user-item">
                                    <a href="#" class="navbar__user-link">
                                        Blog
                                    </a>
                                </li>
                                <li class="navbar__user-item">
                                    <a href="#" class="navbar__user-link">
                                        Quyền riêng tư
                                    </a>
                                </li>
                                <li class="navbar__user-item">
                                    <a href="#" class="navbar__user-link">
                                        Nâng cấp
                                    </a>
                                </li>

                                <div class="nav__user-line-spread"></div>


                                <li class="navbar__user-item">
                                    <a href="#" class="navbar__user-link">
                                        <button>
                                            Đăng xuất
                                        </button>
                                    </a>
                                </li>
                            </ul>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</header>


<div class="term__container">
    <h1 class="term__title">
        Tên học phần
    </h1>

    <div class="term__content">
        <div class="study__mode">
            <div class="study__mode-title">
                HỌC
            </div>
            <ul class="study__mode-content">
                <li class="study__mode-item">
                    <a href="#" class="study__mode-link">
                        <i class="bi bi-back"></i>
                        <span class="study__mode-text">
                                Thẻ ghi nhớ
                            </span>
                    </a>
                </li>
                <li class="study__mode-item">
                    <a href="#" class="study__mode-link">
                        <i class="bi bi-info-circle"></i>
                        <span class="study__mode-text">
                                Học
                            </span>
                    </a>
                </li>
                <li class="study__mode-item">
                    <a href="#" class="study__mode-link">
                        <i class="fas fa-pen-nib"></i>
                        <span class="study__mode-text">
                                Viết
                            </span>
                    </a>
                </li>


                <li class="study__mode-item">
                    <a href="#" class="study__mode-link">
                        <i class="fas fa-volume-up"></i>
                        <span class="study__mode-text">
                                Chính tả
                            </span>
                    </a>
                </li>

                <li class="study__mode-item">
                    <a href="#" class="study__mode-link">
                        <i class="bi bi-file-earmark-check-fill"></i>
                        <span class="study__mode-text">
                                Kiểm tra
                            </span>
                    </a>
                </li>
            </ul>
        </div>

        <div class="term__card-study">
            <div class="term__card-list">
                <c:forEach var="a" items="${cards}">
                <div class="term__card-item">
                    <button class="term__card-word-text term__card-text" onclick="flipWordToDefinition(this)">
                            ${a.term}

                    </button>
                    <button class="term__card-definition-text term__card-text" onclick="flipDefinitionToWord(this)">
                            ${a.meaning}
                    </button>
                </div>
                </c:forEach>
            </div>
            <div class="term__card-control">
                <div></div>
                <div class="card__control-slide">
                    <button class="card__control-prev-btn">
                        <i class="fas fa-arrow-left"></i>
                    </button>
                    <div class="card__control-progress-index">
                            <span class="card__control-progress-index-current" id="current-slide">
                                1
                            </span>
                        <span class="card__control-progress-index-separator">
                                /
                            </span>
                        <span class="card__control-progress-index-total" id="total-slide">

                            </span>
                    </div>
                    <button class="card__control-next-btn">
                        <i class="fas fa-arrow-right"></i>
                    </button>
                </div>

                <button class="card__control-fullscreen-btn">
                    <i class="fas fa-expand"></i>
                </button>
            </div>
        </div>

    </div>

    <div class="term__information">
        <div class="term__information-header">
            <div class="term__information-author">
                <img class="term__information-author-avatar" src="user_page/assets/img/avatar.jpg" alt="">

                <div class="term__information-author-info">
                    <p class="term__information-author-info-text">
                        Tạo bởi
                    </p>
                    <p class="term__information-author-info-name">
                        Nguyễn Văn A
                    </p>
                </div>
            </div>

            <div class="term__information-tool">
                <button class="term__information-tool-item term__information-tool-add">
                    <i class="fas fa-plus"></i>
                </button>
                <a href="#" class="term__information-tool-item term__information-tool-edit">
                    <i class="fas fa-pen"></i>
                </a>
                <button class="term__information-tool-item term__information-tool-share">
                    <i class="bi bi-upload"></i>
                </button>
                <button class="term__information-tool-item term__information-tool-infor">
                    <i class="fas fa-info"></i>
                </button>
                <button class="term__information-tool-item term__information-tool-menu">
                    <i class="fas fa-ellipsis-h"></i>

                    <ul class="term__information-tool-menu-list">
                        <div class="menu__arrow"></div>
                        <li class="term__information-tool-menu-item">
                            <a href="#" class="term__information-tool-menu-link">
                                <i class="far fa-clone"></i>
                                <span class="term__information-tool-menu-text">
                                        Lưu và chỉnh sửa
                                    </span>
                            </a>

                        </li>
                        <li class="term__information-tool-menu-item">
                            <a href="#" class="term__information-tool-menu-link">
                                <i class="fas fa-copy"></i>
                                <span class="term__information-tool-menu-text">
                                        Nhúng
                                    </span>
                            </a>
                        </li>
                        <li class="term__information-tool-menu-item">
                            <a href="#" class="term__information-tool-menu-link">
                                <i class="bi bi-trash"></i>
                                <span class="term__information-tool-menu-text">
                                        Xóa
                                    </span>
                            </a>
                        </li>
                    </ul>
                </button>


            </div>
        </div>
        <div class="term__information-description">
            <p class="term__information-description-text">
                Một học phần kiểm thử Một học phần kiểm thử Một học phần kiểm thử Một học phần kiểm thử
            </p>
        </div>
    </div>


    <div class="term__detail">
        <div class="term__detail-header">
            <div class="term__detail-header-title">
                Thuật ngữ trong học phần này (${count})
            </div>
            <div class="term__detail-header-sort">
                <select class="term__detail-header-sort-select">
                    <option value="">Thứ tự gốc</option>
                    <option value="">Bảng chử cái</option>
                    <option value="">Thông số của bạn</option>
                </select>
            </div>
        </div>
        <div class="term__detail-notification">
            <div class="term__detail-notification-title">
                Đang học (${count})
            </div>
            <div class="term__detail-notification-content">
                Bạn đã bắt đầu học những thuật ngữ này. Tiếp tục phát huy nhé!
            </div>

        </div>

        <div class="term__detail-list">
        <c:forEach var="ar" items="${cards}">
            <div class="term__detail-item">
                <div class="term__detail-item-word">
                    ${ar.term}
                </div>
                <div class="term__detail-item-definition">
                    ${ar.meaning}
                </div>
                <div class="term__detail-item-control">
                    <button class="term__detail-item-control-btn">
                        <i class="fas fa-star"></i>
                    </button>
                    <button class="term__detail-item-control-btn">
                        <i class="fas fa-volume-up"></i>
                    </button>
                    <button class="term__detail-item-control-btn">
                        <i class="fas fa-pen"></i>
                    </button>
                </div>
            </div>
        </c:forEach>
        </div>
        <button class="term__detail-edit-btn">
            Thêm hoặc xóa thuật ngữ
        </button>
    </div>
</div>

<script src="user_page/assets/js/header.js"></script>
<script src="user_page/assets/js/term_details.js"></script>
</body>

</html>