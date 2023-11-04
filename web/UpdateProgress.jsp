<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ include file="/includes/header.jsp" %>
<%@include file="/includes/Shipper-sub-nav-bar.jsp" %>
<section>
    <c:if test="${empty OrderList}">
        <h3>Không có đơn hàng nào cần cập nhật.</h3>
    </c:if>
    <c:if test="${not empty OrderList}">
        <form action="/ProjectAssignment/updateprogress">
            <table>
                <thead>
                    <tr>
                        <th>STT</th>
                        <th>Mã Vận Chuyển</th>
                        <th>Địa Chỉ</th>
                        <th>Phí Vận Chuyển</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${OrderList}" var="item" varStatus="loop">
                        <tr>
                            <td>${loop.index + 1}</td>
                            <td>${item.orderID}</td>
                            <td>${item.orderAddress}</td>
                            <td>${item.orderTransaction} VND</td>
                            <td>
                                <select class="form-select" id="progress${item.orderID}" name="progress${item.orderID}" required>
                                    <option value="">${item.orderStatus}</option>
                                    <option value="Shipper đang lấy hàng">Shipper đang lấy hàng</option>
                                    <option value="Đơn hàng đang được giao">Đơn hàng đang được giao</option>
                                    <option value="Đơn hàng đã giao thành công">Đơn hàng đã giao thành công</option>
                                    <option value="Đơn hàng đã đến kho An Giang SOC">Đơn hàng đã đến kho An Giang SOC</option>
                                    <option value="Đơn hàng đã đến kho Bà Rịa - Vũng Tàu SOC">Đơn hàng đã đến kho Bà Rịa - Vũng Tàu SOC</option>
                                    <option value="Đơn hàng đã đến kho Bạc Liêu SOC">Đơn hàng đã đến kho Bạc Liêu SOC</option>
                                    <option value="Đơn hàng đã đến kho Bắc Giang SOC">Đơn hàng đã đến kho Bắc Giang SOC</option>
                                    <option value="Đơn hàng đã đến kho Bắc Kạn SOC">Đơn hàng đã đến kho Bắc Kạn SOC</option>
                                    <option value="Đơn hàng đã đến kho Bắc Ninh SOC">Đơn hàng đã đến kho Bắc Ninh SOC</option>
                                    <option value="Đơn hàng đã đến kho Bến Tre SOC">Đơn hàng đã đến kho Bến Tre SOC</option>
                                    <option value="Đơn hàng đã đến kho Cà Mau SOC">Đơn hàng đã đến kho Cà Mau SOC</option>
                                    <option value="Đơn hàng đã đến kho Cao Bằng SOC">Đơn hàng đã đến kho Cao Bằng SOC</option>
                                    <option value="Đơn hàng đã đến kho Đà Nẵng SOC">Đơn hàng đã đến kho Đà Nẵng SOC</option>
                                    <option value="Đơn hàng đã đến kho Đắk Lắk SOC">Đơn hàng đã đến kho Đắk Lắk SOC</option>
                                    <option value="Đơn hàng đã đến kho Đắk Nông SOC">Đơn hàng đã đến kho Đắk Nông SOC</option>
                                    <option value="Đơn hàng đã đến kho Điện Biên SOC">Đơn hàng đã đến kho Điện Biên SOC</option>
                                    <option value="Đơn hàng đã đến kho Đồng Tháp SOC">Đơn hàng đã đến kho Đồng Tháp SOC</option>
                                    <option value="Đơn hàng đã đến kho Đồng Nai SOC">Đơn hàng đã đến kho Đồng Nai SOC</option>
                                    <option value="Đơn hàng đã đến kho Gia Lai SOC">Đơn hàng đã đến kho Gia Lai SOC</option>
                                    <option value="Đơn hàng đã đến kho Hà Giang SOC">Đơn hàng đã đến kho Hà Giang SOC</option>
                                    <option value="Đơn hàng đã đến kho Hà Nam SOC">Đơn hàng đã đến kho Hà Nam SOC</option>
                                    <option value="Đơn hàng đã đến kho Hà Nội SOC">Đơn hàng đã đến kho Hà Nội SOC</option>
                                    <option value="Đơn hàng đã đến kho Hà Tĩnh SOC">Đơn hàng đã đến kho Hà Tĩnh SOC</option>
                                    <option value="Đơn hàng đã đến kho Hải Dương SOC">Đơn hàng đã đến kho Hải Dương SOC</option>
                                    <option value="Đơn hàng đã đến kho Hải Phòng SOC">Đơn hàng đã đến kho Hải Phòng SOC</option>
                                    <option value="Đơn hàng đã đến kho Hậu Giang SOC">Đơn hàng đã đến kho Hậu Giang SOC</option>
                                    <option value="Đơn hàng đã đến kho Hòa Bình SOC">Đơn hàng đã đến kho Hòa Bình SOC</option>
                                    <option value="Đơn hàng đã đến kho Hồ Chí Minh SOC">Đơn hàng đã đến kho Hồ Chí Minh SOC</option>
                                    <option value="Đơn hàng đã đến kho Hưng Yên SOC">Đơn hàng đã đến kho Hưng Yên SOC</option>
                                    <option value="Đơn hàng đã đến kho Khánh Hòa SOC">Đơn hàng đã đến kho Khánh Hòa SOC</option>
                                    <option value="Đơn hàng đã đến kho Kiên Giang SOC">Đơn hàng đã đến kho Kiên Giang SOC</option>
                                    <option value="Đơn hàng đã đến kho Kon Tum SOC">Đơn hàng đã đến kho Kon Tum SOC</option>
                                    <option value="Đơn hàng đã đến kho Lai Châu SOC">Đơn hàng đã đến kho Lai Châu SOC</option>
                                    <option value="Đơn hàng đã đến kho Lâm Đồng SOC">Đơn hàng đã đến kho Lâm Đồng SOC</option>
                                    <option value="Đơn hàng đã đến kho Lạng Sơn SOC">Đơn hàng đã đến kho Lạng Sơn SOC</option>
                                    <option value="Đơn hàng đã đến kho Lào Cai SOC">Đơn hàng đã đến kho Lào Cai SOC</option>
                                    <option value="Đơn hàng đã đến kho Long An SOC">Đơn hàng đã đến kho Long An SOC</option>
                                    <option value="Đơn hàng đã đến kho Nam Định SOC">Đơn hàng đã đến kho Nam Định SOC</option>
                                    <option value="Đơn hàng đã đến kho Nghệ An SOC">Đơn hàng đã đến kho Nghệ An SOC</option>
                                    <option value="Đơn hàng đã đến kho Ninh Bình SOC">Đơn hàng đã đến kho Ninh Bình SOC</option>
                                    <option value="Đơn hàng đã đến kho Ninh Thuận SOC">Đơn hàng đã đến kho Ninh Thuận SOC</option>
                                    <option value="Đơn hàng đã đến kho Phú Thọ SOC">Đơn hàng đã đến kho Phú Thọ SOC</option>
                                    <option value="Đơn hàng đã đến kho Phú Yên SOC">Đơn hàng đã đến kho Phú Yên SOC</option>
                                    <option value="Đơn hàng đã đến kho Quảng Bình SOC">Đơn hàng đã đến kho Quảng Bình SOC</option>
                                    <option value="Đơn hàng đã đến kho Quảng Nam SOC">Đơn hàng đã đến kho Quảng Nam SOC</option>
                                    <option value="Đơn hàng đã đến kho Quảng Ngãi SOC">Đơn hàng đã đến kho Quảng Ngãi SOC</option>
                                    <option value="Đơn hàng đã đến kho Quảng Ninh SOC">Đơn hàng đã đến kho Quảng Ninh SOC</option>
                                    <option value="Đơn hàng đã đến kho Quảng Trị SOC">Đơn hàng đã đến kho Quảng Trị SOC</option>
                                    <option value="Đơn hàng đã đến kho Sóc Trăng SOC">Đơn hàng đã đến kho Sóc Trăng SOC</option>
                                    <option value="Đơn hàng đã đến kho Sơn La SOC">Đơn hàng đã đến kho Sơn La SOC</option>
                                    <option value="Đơn hàng đã đến kho Tây Ninh SOC">Đơn hàng đã đến kho Tây Ninh SOC</option>
                                    <option value="Đơn hàng đã đến kho Thái Bình SOC">Đơn hàng đã đến kho Thái Bình SOC</option>
                                    <option value="Đơn hàng đã đến kho Thái Nguyên SOC">Đơn hàng đã đến kho Thái Nguyên SOC</option>
                                    <option value="Đơn hàng đã đến kho Thanh Hóa SOC">Đơn hàng đã đến kho Thanh Hóa SOC</option>
                                    <option value="Đơn hàng đã đến kho Thừa Thiên Huế SOC">Đơn hàng đã đến kho Thừa Thiên Huế SOC</option>
                                    <option value="Đơn hàng đã đến kho Tiền Giang SOC">Đơn hàng đã đến kho Tiền Giang SOC</option>
                                    <option value="Đơn hàng đã đến kho Trà Vinh SOC">Đơn hàng đã đến kho Trà Vinh SOC</option>
                                    <option value="Đơn hàng đã đến kho Tuyên Quang SOC">Đơn hàng đã đến kho Tuyên Quang SOC</option>
                                    <option value="Đơn hàng đã đến kho Vĩnh Long SOC">Đơn hàng đã đến kho Vĩnh Long SOC</option>
                                    <option value="Đơn hàng đã đến kho Vĩnh Phúc SOC">Đơn hàng đã đến kho Vĩnh Phúc SOC</option>
                                    <option value="Đơn hàng đã đến kho Yên Bái SOC">Đơn hàng đã đến kho Yên Bái SOC</option>
                                </select>

                            </td>
                        </tr>
                    </c:forEach>
                </tbody> 
            </table>
            <button type="submit" class="btn btn-success button-accept">Save</button></a>
        </form>
    </c:if>
</section>
</<div>
    <%@ include file="/includes/footer.jsp" %>
