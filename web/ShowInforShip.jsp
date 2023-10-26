<%@ include file="/includes/header.jsp" %>
<%@include file="/includes/Shipper-sub-nav-bar.jsp" %>
<section>
            <div>
                <h3>Shipper Information</h3>
                <div >
                    <div class="row">
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label">ID:</label>
                                <span class="form-text">${shipper.id}</span>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Name:</label>
                                <span class="form-text">${shipper.name}</span>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Phone:</label>
                                <span class="form-text">${shipper.phone}</span>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label class="form-label">Date of Birth:</label>
                                <span class="form-text">${shipper.dob}</span>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Address:</label>
                                <span class="form-text">${shipper.address}</span>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">CCCD:</label>
                                <span class="form-text">${shipper.cccd}</span>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">License Plates:</label>
                                <span class="form-text">${shipper.licensePlates}</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </<div>
</section>
<%@ include file="/includes/footer.jsp" %>