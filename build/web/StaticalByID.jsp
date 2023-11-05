
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="includes/header.jsp" />
<%@include file="/includes/Manager-sub-nav-bar.jsp" %>

<section>
    <div class="container mt-5">
        <h1>Thống kê</h1>
        <form action="/ProjectAssignment/evaluate">
            <div class="mb-3">
                <label for="startDate">Mã nhân viên:</label>
                <input type="text" class="form-control" id="shipId" name="shipId">
            </div>
            <button type="submit" class="btn btn-primary">Thống kê</button>
        </form>
    </div>
</section>
</<div>
    <jsp:include page="includes/footer.jsp" />
