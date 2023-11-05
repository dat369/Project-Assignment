<%--
    Document   : changeinfo
    Created on : Nov 5, 2023, 12:43:57 AM
    Author     : quang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="includes/header.jsp" />
<div class="container mt-5">
    <h1 class="mb-4">Thay Đổi Thông Tin Khách Hàng</h1>
    <form action="updatec" method="post">
        <input type="hidden" name="cusID" value="${customer.cid}">

        <div class="mb-3">
            <label for="name" class="form-label">Tên:</label>
            <input type="text" class="form-control" name="cusName" value="${customer.cusName}">
        </div>

        <div class="mb-3">      
            <label for="phone" class="form-label">Số Điện Thoại:</label>
            <input type="text" class="form-control" name="cusPhone" value="${customer.cusPhone}">
        </div>

        <div class="mb-3">
            <label for="dob" class="form-label">Ngày Sinh:</label>
            <input type="date" class="form-control" name="dob" value="${customer.dob}">
        </div>

        <div class="mb-3">
            <label for="address" class="form-label">Địa Chỉ:</label>
            <input type="text" class="form-control" name="cusAddress" value="${customer.cusAddress}">
        </div>

        <button type="submit" class="btn btn-primary">Cập Nhật</button>
    </form>
</div>
<jsp:include page="includes/footer.jsp" />
