<%@ include file="/includes/header.jsp" %>
<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@include file="/includes/Manager-sub-nav-bar.jsp" %>
<section>
    <div class="container mt-5 form-container">
        <h1 class="heading-update">Thống kê</h1>
        <div >
            <div class="mb-3">
                <label class="form-label">ID:</label>
                <span class="form-text">${s.shipID}</span>
            </div>
            <div class="mb-3">
                <label class="form-label">Name:</label>
                <span class="form-text">${s.name}</span>
            </div>
            <div class="mb-3">
                <label class="form-label">Tổng số đơn:</label>
                <span class="form-text">${s.numberOrder}</span>
            </div>
            <div class="mb-3">
                <label class="form-label">Tổng số sao:</label>
                <span class="form-text">${s.numberStar}</span>
            </div>
            <div class="mb-3">
                <label class="form-label">số đơn bị đánh giá 1 sao:</label>
                <span class="form-text">${s.number1Star}</span>
            </div>
        </div>
    </div>
</section>
</div>
<%@ include file="/includes/footer.jsp" %>