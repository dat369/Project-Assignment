<%@ include file="/includes/header.jsp" %>
<%@page contentType="text/html" pageEncoding="utf-8" %>
<section>
   <div class="container mt-5 form-container">
        <h1 class="heading-update">Sign Up</h1>
        <form action="/ProjectAssignment/signup" id="userForm" class="form-update" method="POST">
            <div class="mb-3">
                <label for="name" class="form-label">Họ và Tên:</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>
            <div class="mb-3">
                <label for="email" class="label">Email:</label>
                <input type="email" id="email" name="email" class="form-control" required>
                <small class="form-text hint-text">Vui lòng nhập địa chỉ email hợp lệ (ví dụ: example@gmail.com).</small>
            </div>
            <div class="mb-3">
                <label for="password" class="label">Mật Khẩu:</label>
                <input type="password" id="password" name="password" class="form-control" required>
            </div>

            <div class="mb-3">
                <label for="confirmPassword" class="label">Xác Nhận Mật Khẩu:</label>
                <input type="password" id="confirmPassword" name="confirmPassword" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="phone" class="form-label">Số Điện Thoại:</label>
                <input type="tel" class="form-control" id="phone" name="phone" required>
            </div>
            <div class="mb-3">
                <label for="dob" class="form-label">Ngày Sinh:</label>
                <input type="date" class="form-control" id="dob" name="dob" required>
            </div>
            <div class="mb-3">
                <label for="city" class="form-label">Thành Phố:</label>
                <select class="form-select" id="city" name="city" required>
                    <option value="">Chọn thành phố</option>
                    <option value="An Giang">An Giang</option>
                    <option value="Bà Rịa - Vũng Tàu">Bà Rịa - Vũng Tàu</option>
                    <option value="Bạc Liêu">Bạc Liêu</option>
                    <option value="Bắc Kạn">Bắc Kạn</option>
                    <option value="Bắc Giang">Bắc Giang</option>
                    <option value="Bắc Ninh">Bắc Ninh</option>
                    <option value="Bến Tre">Bến Tre</option>
                    <option value="Cà Mau">Cà Mau</option>
                    <option value="Cao Bằng">Cao Bằng</option>
                    <option value="Đà Nẵng">Đà Nẵng</option>
                    <option value="Đắk Lắk">Đắk Lắk</option>
                    <option value="Đắk Nông">Đắk Nông</option>
                    <option value="Điện Biên">Điện Biên</option>
                    <option value="Đồng Tháp">Đồng Tháp</option>
                    <option value="Đồng Nai">Đồng Nai</option>
                    <option value="Gia Lai">Gia Lai</option>
                    <option value="Hà Giang">Hà Giang</option>
                    <option value="Hà Nam">Hà Nam</option>
                    <option value="Hà Nội">Hà Nội</option>
                    <option value="Hà Tĩnh">Hà Tĩnh</option>
                    <option value="Hải Dương">Hải Dương</option>
                    <option value="Hải Phòng">Hải Phòng</option>
                    <option value="Hậu Giang">Hậu Giang</option>
                    <option value="Hòa Bình">Hòa Bình</option>
                    <option value="Hồ Chí Minh">Hồ Chí Minh</option>
                    <option value="Hưng Yên">Hưng Yên</option>
                    <option value="Khánh Hòa">Khánh Hòa</option>
                    <option value="Kiên Giang">Kiên Giang</option>
                    <option value="Kon Tum">Kon Tum</option>
                    <option value="Lai Châu">Lai Châu</option>
                    <option value="Lâm Đồng">Lâm Đồng</option>
                    <option value="Lạng Sơn">Lạng Sơn</option>
                    <option value="Lào Cai">Lào Cai</option>
                    <option value="Long An">Long An</option>
                    <option value="Nam Định">Nam Định</option>
                    <option value="Nghệ An">Nghệ An</option>
                    <option value="Ninh Bình">Ninh Bình</option>
                    <option value="Ninh Thuận">Ninh Thuận</option>
                    <option value="Phú Thọ">Phú Thọ</option>
                    <option value="Phú Yên">Phú Yên</option>
                    <option value="Quảng Bình">Quảng Bình</option>
                    <option value="Quảng Nam">Quảng Nam</option>
                    <option value="Quảng Ngãi">Quảng Ngãi</option>
                    <option value="Quảng Ninh">Quảng Ninh</option>
                    <option value="Quảng Trị">Quảng Trị</option>
                    <option value="Sóc Trăng">Sóc Trăng</option>
                    <option value="Sơn La">Sơn La</option>
                    <option value="Tây Ninh">Tây Ninh</option>
                    <option value="Thái Bình">Thái Bình</option>
                    <option value="Thái Nguyên">Thái Nguyên</option>
                    <option value="Thanh Hóa">Thanh Hóa</option>
                    <option value="Thừa Thiên Huế">Thừa Thiên Huế</option>
                    <option value="Tiền Giang">Tiền Giang</option>
                    <option value="Trà Vinh">Trà Vinh</option>
                    <option value="Tuyên Quang">Tuyên Quang</option>
                    <option value="Vĩnh Long">Vĩnh Long</option>
                    <option value="Vĩnh Phúc">Vĩnh Phúc</option>
                    <option value="Yên Bái">Yên Bái</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="specificAddress" class="form-label">Địa Chỉ Cụ Thể:</label>
                <input type="text" class="form-control" id="specificAddress" name="specificAddress" required>
            </div>
            ${MSG}
            <button type="submit" class="btn btn-success button-accept">Xác Nhận</button>
        </form>
    </div>
</section>
<%@ include file="/includes/footer.jsp" %>