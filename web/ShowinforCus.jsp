<%@ include file="/includes/header.jsp" %>
<%@page contentType="text/html" pageEncoding="utf-8" %>
<section>
    <div class="container mt-5 form-container">
        <h1 class="heading-update">Thông Tin Customer</h1>
        <a href="/ProjectAssignment/ordercustomer" class="delete-link" style="position: fixed; top: 100px; right: 80px; font-size: 24px; text-decoration: none;">
            &#10006; <!-- Đây là Unicode cho biểu tượng "x" -->
        </a>

        <div >
            <div class="mb-3">
                <label class="form-label">ID:</label>
                <span class="form-text">${customer.cid}</span>
            </div>
            <div class="mb-3">
                <label class="form-label">Name:</label>
                <span class="form-text">${customer.cusName}</span>
            </div>
            <div class="mb-3">
                <label class="form-label">Phone:</label>
                <span class="form-text">${customer.cusPhone}</span>
            </div>
            <div class="mb-3">
                <label class="form-label">Date of Birth:</label>
                <span class="form-text">${customer.dob}</span>
            </div>
            <div class="mb-3">
                <label class="form-label">Address:</label>
                <span class="form-text">${customer.cusAddress}</span>
            </div>
        </div>
    </div>
</div>
</div>
</<div>
</section>
<%@ include file="/includes/footer.jsp" %>