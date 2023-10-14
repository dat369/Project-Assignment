<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ include file="/includes/header.jsp" %>
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
                    <%-- Sử dụng biến loop.index để hiển thị số thứ tự bắt đầu từ 1 --%>
                    <td>${loop.index + 1}</td>
                    <%-- Hiển thị các thuộc tính của đơn hàng --%>
                    <td>${item.orderID}</td>
                    <td>${item.orderAddress}</td>
                    <td>${item.orderTransaction} VND</td>
                    <td><button class="view-button">Xem Chi Tiết</button></td>
                </tr>
            </c:forEach>
        </tbody> 
    </table>
</section>
<%@ include file="/includes/footer.jsp" %>
