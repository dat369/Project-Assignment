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
    <div class="container mt-5 ">
        <h1>Tạo đơn hàng</h1>
        <form action="/ProjectAssignment/order" >
            <div class="mb-3">
                <label for="orderName">Order Name:</label>
                <input type="text" id="orderName" name="orderName"><br>
            </div>
            <div class="mb-3">
                <label for="orderPhone">Order Phone:</label>
                <input type="text" id="orderPhone" name="orderPhone"><br>
            </div>
            <input type="hidden" id="senderAddress" name="senderAddress" value="<%= cusAddress %>">
            <div class="mb-3">
                <label for="orderAddress">Order Address:</label>
                <input type="text" id="orderAddress" name="orderAddress" onchange="calculator()"><br>
            </div>
            <div class="mb-3">
                <label for="dateOfDelivery">Date of Delivery:</label>
                <input type="date" id="dateOfDelivery" name="dateOfDelivery" placeholder="YYYY-MM-DD"><br>
            </div>
            <div class="mb-3">
                <label for="orderType">Order Type:</label>
                <select id="orderType" name="orderType" onchange="calculator()">
                    <option value="C">Casual</option>
                    <option value="F">Fragile</option>
                    <option value="B">Big Size</option>
                </select><br>
            </div>
            <div class="mb-3">
                <label for="orderHeight">Order Volume:</label>
                <input id="orderVolume" name="orderVolume" onchange="calculator()"><br>
            </div>
            <div class="mb-3">
                <label for="orderHeight">Order Weight:</label>
                <input id="orderWeight" name="orderWeight"><br>
            </div>
            <div class="mb-3">
                <label for="orderShippingType">Order shipping type:</label>
                <select id="orderShippingType" name="orderShippingType" onchange="calculator()">
                    <option value="N">Normal</option>
                    <option value="F">Fast</option>
                </select><br>
            </div>
            <div class="mb-3">
                <label for="orderTransaction">Order Transaction:</label>
                <input id="orderTransaction" name="orderTransaction" value=""><br>
            </div>

            <div class="mb-3">
                <label for="orderStatus">Note:</label>
                <input type="text" id="orderStatus" name="orderStatus"><br>
            </div>
            <input type="submit" value="Send">
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
        const servletURL = `./calculator?senderAddress=`+senderAddress.value+`&orderAddress=`+orderAddress.value+`&orderType=`+orderType.value+`&orderVolume=`+orderVolume.value+`&orderShippingType=`+orderShippingType.value;
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


