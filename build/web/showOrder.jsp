<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ include file="/includes/header.jsp" %>
<%@include file="/includes/Shipper-sub-nav-bar.jsp" %>
<section>
    <c:if test="${empty OrderList}">
        <h3>Không có đơn hàng nào mới.</h3>
    </c:if>
    <c:if test="${not empty OrderList}">
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
                                    <div class="col-md-6">

                                        <div class="property-group">
                                            <div class="property-label">Tên người nhận: ${item.orderName}</div>

                                        </div>
                                        <div class="property-group">
                                            <div class="property-label">Số điện thoại: ${item.orderPhone}</div>

                                        </div>
                                        <div class="property-group">
                                            <div class="property-label">Thể tích: ${item.orderVolume}</div>

                                        </div>
                                        <div class="property-group">
                                            <div class="property-label">Cân nặng: ${item.orderWeight}</div>

                                        </div>
                                        <div class="property-group">
                                            <div class="property-label">Ngày: ${item.dateOfDelivery}</div>

                                        </div>
                                        <div class="property-group">
                                            <div class="property-label">Địa chỉ gửi: ${item.senderAddress}</div>

                                        </div>
                                        <div class="property-group">
                                            <div class="property-label">Địa chỉ nhận: ${item.orderAddress}</div>

                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="property-group">
                                            <div class="property-label">Loại hàng: ${item.orderType}</div>

                                        </div>
                                        <div class="property-group">
                                            <div class="property-label">Loại chuyển phát: ${item.orderDeliveryType}</div>

                                        </div>
                                        <div class="property-group">
                                            <div class="property-label">Tổng tiền: ${item.orderTransaction}</div>

                                        </div>
                                        <div class="property-group">
                                            <div class="property-label">Ghi chú: ${item.note}</div>

                                        </div>
                                    </div>
                                </div>
                                <div class="buttons">
                                    <a href="/ProjectAssignment/choice?choice=accept&orderId=${item.orderID}"><button class="btn btn-primary btn-lg btn-dark text-uppercase btn-rounded-none fs-6 confirm-button">Xác Nhận</button></a>
                                </div>
                            </div>
                        </td>
                    </tr>
                </c:forEach>

            </tbody> 
        </table>
        <div id="myModal" class="modal">
            <div class="modal-content">
                <span class="close" onclick="dongCuaSo()">&times;</span>
                <p id="thongBao">${MSG}</p>
            </div>
        </div>
    </c:if>
</section>
</<div>
    <%@ include file="/includes/footer.jsp" %>
