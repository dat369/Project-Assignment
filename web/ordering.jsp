<%-- 
    Document   : ordering
    Created on : Oct 23, 2023, 12:04:42 AM
    Author     : quang
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="model.Customer" %>

<% 
    Customer customer = (Customer) request.getSession().getAttribute("customer");
    String cusAddress = (customer != null) ? customer.getCusAddress() : "";
%>
<jsp:include page="includes/header.jsp" />
<%@include file="/includes/Customer-sub-nav-bar.jsp" %>
<section>
    <div class="container mt-5">
        <h1 style="margin-top: 60px" class="mb-4">Tạo đơn hàng</h1>
        <form action="/ProjectAssignment/order" class="row g-3">
            <div class="col-md-6">
                <label for="orderName" class="form-label">Order Name</label>
                <input type="text" class="form-control" id="orderName" name="orderName">
            </div>
            <div class="col-md-6">
                <label for="orderPhone" class="form-label">Order Phone</label>
                <input type="text" class="form-control" id="orderPhone" name="orderPhone">
            </div>
            <input type="hidden" id="senderAddress" name="senderAddress" value="<%= cusAddress %>">
            <div class="col-md-12">
                <label for="orderAddress" class="form-label">Order Address</label>
                <input type="text" class="form-control" id="orderAddress" name="orderAddress" onchange="calculator()">
            </div>
            <div class="col-md-6">
                <label for="dateOfDelivery" class="form-label">Date of Delivery</label>
                <input type="date" class="form-control" id="dateOfDelivery" name="dateOfDelivery">
            </div>
            <div class="col-md-6">
                <label for="orderType" class="form-label">Order Type</label>
                <select id="orderType" class="form-select" name="orderType" onchange="calculator()">
                    <option value="C">Casual</option>
                    <option value="F">Fragile</option>
                    <option value="B">Big Size</option>
                </select>
            </div>
            <div class="col-md-6">
                <label for="orderVolume" class="form-label">Order Volume</label>
                <input type="text" class="form-control" id="orderVolume" name="orderVolume" onchange="calculator()">
            </div>
            <div class="col-md-6">
                <label for="orderWeight" class="form-label">Order Weight</label>
                <input type="text" class="form-control" id="orderWeight" name="orderWeight">
            </div>
            <div class="col-md-6">
                <label for="orderShippingType" class="form-label">Order Shipping Type</label>
                <select id="orderShippingType" class="form-select" name="orderShippingType" onchange="calculator()">
                    <option value="N">Normal</option>
                    <option value="F">Fast</option>
                </select>
            </div>
            <div class="col-md-6">
                <label for="orderTransaction" class="form-label">Order Transaction</label>
                <input type="text" class="form-control" id="orderTransaction" name="orderTransaction">
            </div>
            <div class="col-12">
                <label for="orderStatus" class="form-label">Note</label>
                <input type="text" class="form-control" id="orderStatus" name="orderStatus">
            </div>
            <div class="col-12">
                <button type="submit" class="btn btn-primary">xác nhận</button>
            </div>
        </form>
    </div>

</section>
<script>
    const senderAddress = document.getElementById('senderAddress');
    const orderAddress = document.getElementById('orderAddress');
    const orderType = document.getElementById('orderType');
    const orderVolume = document.getElementById('orderVolume');
    const orderShippingType = document.getElementById('orderShippingType');

    const orderTransaction = document.getElementById('orderTransaction');

    async function calculator() {
        const servletURL = `./calculator?senderAddress=` + senderAddress.value + `&orderAddress=` + orderAddress.value + `&orderType=` + orderType.value + `&orderVolume=` + orderVolume.value + `&orderShippingType=` + orderShippingType.value;
        orderTransaction.value = 'Calculating';

        // Make a GET request to the servlet
        await fetch(servletURL)
                .then(response => {
                    if (!response.ok) {
                        throw new Error('Network response was not ok');
                    }
                    return response.text(); // Assuming the response is plain text
                })
                .then(money => {
                    // Handle the calculated shipping fee (money)
                    console.log('Shipping Fee: ' + money);

                    orderTransaction.value = money;

                    // You can now use 'money' in your client-side code
                })
                .catch(error => {
                    console.error('Error:', error);

                    orderTransaction.value = 'Location not found!';
                });
    }
</script>
<jsp:include page="includes/footer.jsp" />


