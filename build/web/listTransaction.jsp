<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ include file="/includes/header.jsp" %>
<%@include file="/includes/Manager-sub-nav-bar.jsp" %>
<section>
    <c:if test="${empty list}">
        <h3>Không có đơn hàng nào mới.</h3>
    </c:if>
    <c:if test="${not empty list}">
        <table>
            <thead>
                <tr>
                    <th>Mã shipper</th>
                    <th>Tên shipper</th>
                    <th>số lượng đơn</th>
                    <th>Tổng doanh thu</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${list}" var="item">
                    <tr>
                        <td>${item.shipID}</td>
                        <td>${item.shipName}</td>
                        <td>${item.numberOrder}</td>
                        <td>${item.sumTransaction} VND</td>
                    </tr>
                </c:forEach>

            </tbody> 
        </table>
    </c:if>
</section>
</<div>
    <%@ include file="/includes/footer.jsp" %>
