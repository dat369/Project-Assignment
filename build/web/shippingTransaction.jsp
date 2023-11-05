
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="includes/header.jsp" />
<%@include file="/includes/Manager-sub-nav-bar.jsp" %>

<section>
    <div class="container mt-5">
        <h1>Thống kê giao dịch</h1>
        <form action="/ProjectAssignment/transaction">
            <div class="mb-3">
                <label for="startDate">Ngày Bắt Đầu:</label>
                <input type="date" class="form-control" id="startDate" name="startDate">
            </div>
            <div class="mb-3">
                <label for="endDate">Ngày Kết Thúc:</label>
                <input type="date" class="form-control" id="endDate" name="endDate">
            </div>
            <button type="submit" class="btn btn-primary">Xác Nhận</button>
        </form>
    </div>
</section>
</<div>
    <jsp:include page="includes/footer.jsp" />
