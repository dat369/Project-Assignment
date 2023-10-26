<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ include file="/includes/header.jsp" %>
<%@include file="/includes/Shipper-sub-nav-bar.jsp" %>
<section>
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
                    <td><button class="view-button">Xem Chi Tiết</button></td>
                </tr>
                <tr class="detail-row" style="margin-bottom: 5vh;">
                    <td class="detail-row" colspan="5">
                        <div class="detail-box" style="display: none;">
                            <div style="display: flex; width: 100%">
                                <div style="width: 50%;">
                                    <div class="property-group">
                                        <div class="property-label">Mã Đơn Hàng:</div>
                                        <div class="property-value" id="order-id"></div>
                                    </div>
                                    <div class="property-group">
                                        <div class="property-label">Tên người nhận:</div>
                                        <div class="property-value" id="customer-id"></div>
                                    </div>
                                    <div class="property-group">
                                        <div class="property-label">Số điện thoại:</div>
                                        <div class="property-value" id="order-id"></div>
                                    </div>
                                    <div class="property-group">
                                        <div class="property-label">Thể tích:</div>
                                        <div class="property-value" id="order-id"></div>
                                    </div>
                                    <div class="property-group">
                                        <div class="property-label">Cân nặng:</div>
                                        <div class="property-value" id="order-id"></div>
                                    </div>
                                    <div class="property-group">
                                        <div class="property-label">Địa chỉ gửi:</div>
                                        <div class="property-value" id="order-id"></div>
                                    </div>
                                    <div class="property-group">
                                        <div class="property-label">Địa chỉ nhận:</div>
                                        <div class="property-value" id="order-id"></div>
                                    </div>
                                </div>
                                <div style="width: 50%;">
                                    <div class="property-group">
                                        <div class="property-label">Loại hàng:</div>
                                        <div class="property-value" id="order-id"></div>
                                    </div>
                                    <div class="property-group">
                                        <div class="property-label">Loại chuyển phát:</div>
                                        <div class="property-value" id="order-id"></div>
                                    </div>
                                    <div class="property-group">
                                        <div class="property-label">Tổng tiền:</div>
                                        <div class="property-value" id="order-id"></div>
                                    </div>
                                    <div class="property-group">
                                        <div class="property-label">Ghi chú:</div>
                                        <div class="property-value" id="order-id"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="buttons">
                                <button class="confirm-button">Xác Nhận</button>
                                <button class="reject-button">Từ Chối</button>
                            </div>
                        </div>
                    </td>
                </tr>
            </c:forEach>
        </tbody> 
    </table>
</section>
</<div>
<%@ include file="/includes/footer.jsp" %>
