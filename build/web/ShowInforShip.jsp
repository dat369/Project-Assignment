<%@ include file="/includes/header.jsp" %>
<%@page contentType="text/html" pageEncoding="utf-8" %>
<section>
    <div class="container mt-5 form-container">
        <h1 class="heading-update">Thông Tin Shipper</h1>
        <a href="/ProjectAssignment/ordersofship?action=yourlist" class="delete-link" style="position: fixed; top: 100px; right: 80px; font-size: 24px; text-decoration: none;">
            &#10006; <!-- Đây là Unicode cho biểu tượng "x" -->
        </a>

        <div >
            <div class="mb-3">
                <label class="form-label">ID:</label>
                <span class="form-text">${shipper.id}</span>
            </div>
            <div class="mb-3">
                <label class="form-label">Name:</label>
                <span class="form-text">${shipper.name}</span>
            </div>
            <div class="mb-3">
                <label class="form-label">Phone:</label>
                <span class="form-text">${shipper.phone}</span>
            </div>
            <div class="mb-3">
                <label class="form-label">Date of Birth:</label>
                <span class="form-text">${shipper.dob}</span>
            </div>
            <div class="mb-3">
                <label class="form-label">Address:</label>
                <span class="form-text">${shipper.address}</span>
            </div>
            <div class="mb-3">
                <label class="form-label">CCCD:</label>
                <span class="form-text">${shipper.cccd}</span>
            </div>
            <div class="mb-3">
                <label class="form-label">License Plates:</label>
                <span class="form-text">${shipper.licensePlates}</span>
            </div>
        </div>
    </div>
</div>
</div>
</<div>
</section>
<%@ include file="/includes/footer.jsp" %>