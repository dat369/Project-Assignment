<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ include file="/includes/header.jsp" %>
<%@include file="/includes/Manager-sub-nav-bar.jsp" %>
<section>
    <c:if test="${empty list}">
        <h3>Không có Shipper mới.</h3>
    </c:if>
    <c:if test="${not empty list}">
        <table>
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Họ Tên</th>
                    <th>Địa Chỉ</th>
                    <th>Ngày sinh</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${list}" var="item" varStatus="loop">
                    <tr>
                        <td>${loop.index + 1}</td>
                        <td>${item.name}</td>
                        <td>${item.address}</td>
                        <td>${item.dob}</td>
                        <td><button class="view-button">Xem Chi Tiết</button></td>
                    </tr>
                    <tr class="detail-row" style="margin-bottom: 5vh;">
                        <td class="detail-row" colspan="5">
                            <div class="detail-box" style="display: none;">
                                <div style="display: flex; width: 100%">
                                    <div class="col-md-6">

                                        <div class="property-group">
                                            <div class="property-label">Tên: ${item.name}</div>

                                        </div>
                                        <div class="property-group">
                                            <div class="property-label">Số điện thoại: ${item.phone}</div>

                                        </div>
                                       
                                       
                                        <div class="property-group">
                                            <div class="property-label">Ngày Sinh: ${item.dob}</div>

                                        </div>
                                        <div class="property-group">
                                            <div class="property-label">Địa chỉ: ${item.address}</div>

                                        </div>
                                        
                                    </div>
                                    <div class="col-md-6">
                                        <div class="property-group">
                                            <div class="property-label">Căn cước công dân: ${item.cccd}</div>

                                        </div>
                                        <div class="property-group">
                                            <div class="property-label">Biển số xe: ${item.licensePlates}</div>

                                        </div>
                                       
                                    </div>
                                </div>
                                <div class="buttons">
                                    <a href="/ProjectAssignment/acceptshipper?choice=accept&shipId=${item.id}"><button class="btn btn-primary btn-lg btn-dark text-uppercase btn-rounded-none fs-6 confirm-button">Xác Nhận</button></a>
                                </div>
                                <div class="buttons">
                                    <a href="/ProjectAssignment/acceptshipper?choice=not&shipId=${item.id}"><button class="btn btn-primary btn-lg btn-dark text-uppercase btn-rounded-none fs-6 confirm-button">Từ chối</button></a>
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
