<%@ include file="/includes/header.jsp" %>
<%@page contentType="text/html" pageEncoding="utf-8" %>
<section>
   <div class="container mt-5 form-container">
        <h1 class="heading-update">Change Password</h1>
        <form action="/ProjectAssignment/changepass" id="userForm" class="form-update" method="POST">
            <div class="mb-3">
                <label for="email" class="label">Email:</label>
                <input type="email" id="email" name="email" class="form-control" required>
                <small class="form-text hint-text">Vui lòng nhập địa chỉ email hợp lệ (ví dụ: example@gmail.com).</small>
            </div>
            <div class="mb-3">
                <label for="password" class="label">Mật Khẩu:</label>
                <input type="password" id="OldPassword" name="OldPassword" class="form-control" required>
            </div>

            <div class="mb-3">
                <label for="newpassword" class="label">Mật Khẩu Mới:</label>
                <input type="password" id="NewPass" name="NewPass" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="confirmPassword" class="form-label">Xác Nhận Mật Khẩu:</label>
                <input type="password" class="form-control" id="ConfrimPass" name="ConfrimPass" required>
            </div>
            <div class="mb-3">
                <span class="form-text">${MSG}</span>
            </div>
            
            <button type="submit" class="btn btn-success button-accept">Xác Nhận</button>
        </form>
    </div>
</section>
<%@ include file="/includes/footer.jsp" %>