<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="utf-8" %>
<% request.getSession().getAttribute("shipper");%>
<!DOCTYPE html>
<html>
<head>
    <title>Giao Hàng An Toàn</title>
    <link rel="shortcut icon" href="https://itviec.com/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBd2lJTEE9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--e5e6308b22d34c672f3b0b7f65616ba7a7e6c3d1/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCem9MWm05eWJXRjBTU0lJY0c1bkJqb0dSVlE2RkhKbGMybDZaVjkwYjE5c2FXMXBkRnNIYVFJc0FXa0NMQUU9IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--15c3f2f3e11927673ae52b71712c1f66a7a1b7bd/%5BGHTK%5D_Logo_RGB.png">
    <style><%@include file="/styles/style.css"%></style>
</head>
<body>
    <header>
        <div class="header">
            <img src="img/logo.PNG" alt="">
            <h1>Không An Toàn Hoàn Tiền Gấp Đôi</h1>
        </div>
    </header>
    <nav class="nav-bar">
        <ul>
            <li class="option">
                <a href="">Trang chủ</a>
            </li>
            <li class="option">
                <a href="">Liên hệ</a>
            </li>
            <li class="option">
                <a href="">CSKH</a>
            </li>
        </ul>
        <ul>
            
            <li class="user">
                    <c:if test="${empty shipper.username}">
                        <a href="login.jsp">Login</a>
                    </c:if>
                    <c:if test="${not empty sessionScope.username}">
                        <img src="img/avatar.jpg" alt="">
                        <a href="">User</a>
                        <div>
                            <ul class="Multi-level">
                                <li class="option"><a href="Update.jsp">Cập nhật thông tin</a></li>
                                <li class="option"><a href="ChangePass.jsp">Đổi mật khẩu</a></li>
                                <li class="option"><a href="/WebApplication5/logout">Đăng xuất</a></li>
                            </ul>
                        </div>
                    </c:if>
            </li>
        </ul>
    </nav>
    <div class="container">
        <div class="sub-nav-bar">
            <a class="nav-button" href="/ProjectAssignment/show">Nhận yêu cầu shipping</a>
            <a class="nav-button" href="ten-servlet-cap-nhat-ket-qua-shipping">Cập nhật kết quả shipping</a>
            <a class="nav-button" href="ten-servlet-tra-cuu-yeu-cau-shipping">Tra cứu các yêu cầu shipping</a>
            <a class="nav-button" href="ten-servlet-in-lo-trinh-shipping">In lộ trình shipping</a>
        </div>
        <div class="content">