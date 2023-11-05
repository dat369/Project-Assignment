<%-- 
    Document   : register
    Created on : Nov 5, 2023, 1:24:54 AM
    Author     : quang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="includes/header.jsp" />

<div class="container mt-5">
    <h1>Register to Shipper</h1>
    <form action="RegisterShipperServlet" method="post">
        <div class="mb-3">
            <label for="shipName" class="form-label">Shipper name:</label>
            <input type="text" class="form-control" id="shipName" name="shipName" required>
        </div>

        <div class="mb-3">
            <label for="shipPhone" class="form-label">Phone:</label>
            <input type="text" class="form-control" id="shipPhone" name="shipPhone" required>
        </div>

        <div class="mb-3">
            <label for="DOB" class="form-label">Date of birth:</label>
            <input type="date" class="form-control" id="DOB" name="DOB" required>
        </div>

        <div class="mb-3">
            <label for="shipAddress" class="form-label">Address:</label>
            <input type="text" class="form-control" id="shipAddress" name="shipAddress" required>
        </div>

        <div class="mb-3">
            <label for="CCCD" class="form-label">CCCD:</label>
            <input type="text" class="form-control" id="CCCD" name="CCCD" required>
        </div>

        <div class="mb-3">
            <label for="licensePlates" class="form-label">License Plates:</label>
            <input type="text" class="form-control" id="licensePlates" name="licensePlates" required>
        </div>
        <button type="submit" class="btn btn-primary">Register</button>
    </form>
</div>
<jsp:include page="includes/footer.jsp" />
