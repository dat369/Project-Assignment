
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                        <td>
                            <a class="nav-link me-5 login" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                <h5>Đánh giá</h5>
                            </a>
                            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                                 aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="tabs-listing">
                                                <div class="nav nav-tabs d-flex justify-content-center border-0" id="nav-tab" role="tablist"><h1>Vote for Shipper</h1></div>

                                                <div class="tab-content" id="nav-tabContent">
                                                    <div class="tab-pane fade active show" id="nav-sign-in" role="tabpanel"
                                                         aria-labelledby="nav-sign-in-tab">

                                                        <form action="/ProjectAssignment/rate?orderID=${item.orderID}">
                                                            <div class="rating">
                                                                <input type="radio" name="orderStar" value="5" id="star5" /><label for="star5"></label>
                                                                <input type="radio" name="orderStar" value="4" id="star4" /><label for="star4"></label>
                                                                <input type="radio" name="orderStar" value="3" id="star3" /><label for="star3"></label>
                                                                <input type="radio" name="orderStar" value="2" id="star2" /><label for="star2"></label>
                                                                <input type="radio" name="orderStar" value="1" id="star1" /><label for="star1"></label>
                                                            </div>
                                                            <div class="comments">
                                                                <label for="comments">Comments:</label><br>
                                                                <textarea name="orderNote" id="comments" rows="4" cols="50"></textarea>
                                                            </div>
                                                            <br>
                                                            <input type="submit" value="Submit">
                                                        </form>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                </c:forEach>
            </tbody> 
        </table>
    </c:if>
</section>
</<div>
    <jsp:include page="includes/footer.jsp" />
