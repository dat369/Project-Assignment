
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel='stylesheet prefetch' href='https://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css'>
<jsp:include page="includes/header.jsp" />
<%@include file="/includes/Customer-sub-nav-bar.jsp" %>

<section>
    <c:if test="${empty OrderList}">
        <h3>Bạn chưa gửi đơn hàng nào.</h3>
    </c:if>
    <c:if test="${not empty OrderList}">
        <table>
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Mã Vận Chuyển</th>
                    <th>Địa Chỉ</th>
                    <th>Phí Vận Chuyển</th>
                    <th>Thông tin vận chuyển</th>
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
                        <td>${item.orderStatus}</td>
                        <c:if test="${item.orderStatus ne 'Đã Hủy'}">
                            <td>
                                <a class="nav-link me-5 login review-btn" data-bs-toggle="modal" data-bs-target="#exampleModal" data-orderid="${item.orderID}">
                                    <h5>Đánh giá</h5>
                                </a>

                                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog modal-dialog-centered">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <h3 class="text-center mb-4">Vote for Shipper</h3>
                                                <form action="/ProjectAssignment/rate?orderID=${item.orderID}" class="mb-3">
                                                    <div class="d-flex justify-content-center">
                                                        <input type="hidden" id="orderIDHidden" name="orderID" value="">
                                                        <div class="star">
                                                            <input class="star star-5" id="star-5" type="radio" name="star" value="5"/>
                                                            <label class="star star-5" for="star-5"></label>
                                                            <input class="star star-4" id="star-4" type="radio" name="star" value="4"/>
                                                            <label class="star star-4" for="star-4"></label>
                                                            <input class="star star-3" id="star-3" type="radio" name="star" value="3"/>
                                                            <label class="star star-3" for="star-3"></label>
                                                            <input class="star star-2" id="star-2" type="radio" name="star" value="2"/>
                                                            <label class="star star-2" for="star-2"></label>
                                                            <input class="star star-1" id="star-1" type="radio" name="star" value="1"/>
                                                            <label class="star star-1" for="star-1"></label>
                                                        </div>
                                                    </div>
                                                    <div class="mb-3">
                                                        <label for="comments" class="form-label">Comments:</label>
                                                        <textarea class="form-control" name="orderNote" id="comments" rows="4" cols="50"></textarea>
                                                    </div>
                                                    <div class="d-flex justify-content-center">
                                                        <input type="submit" class="btn btn-primary" value="Submit">
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </c:if>
                    </tr>

                </c:forEach>
            </tbody> 
        </table>
    </c:if>
</section>
</<div>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var reviewButtons = document.querySelectorAll('.review-btn');

            reviewButtons.forEach(function (button) {
                button.addEventListener('click', function () {
                    var orderId = this.getAttribute('data-orderid');
                    document.getElementById('orderIDHidden').value = orderId;
                });
            });
        });
    </script>

    <jsp:include page="includes/footer.jsp" />
