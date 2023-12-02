<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>

<style type="text/css">
.errorMessage {
	background-color: white;
	width: 143px;
	padding-left: 10px;
	padding-right: 10px;
	padding-top: 5px;
	padding-bottom: 5px;
	margin-left: 107px;
	visibility: hidden;
	border-radius: 10px;
	position: relative;
	float: left;
}

.errorMessage.top-arrow:after {
	content: " ";
	position: absolute;
	right: 90px;
	top: -15px;
	border-top: none;
	border-right: 10px solid transparent;
	border-left: 10px solid transparent;
	border-bottom: 15px solid white;
}
</style>

</head>
<body>
	

	<!-- header file include -->
	<%@include file="header.jsp"%>
	<br>
	<br>
	  <!-- Contact Start -->
    <div class="container-fluid">
        <h2 class="section-title position-relative text-uppercase mx-xl-5 mb-4"><span class="bg-secondary pr-3">Contact Us</span></h2>
        <div class="row px-xl-5">
            <div class="col-lg-7 mb-5">
                <div class="contact-form bg-light p-30">
                    <div id="success"></div>
                    
                    <form name="registration" action="UserController" method="post">
                        <div class="control-group">
                            <input type="text" class="form-control" name="fname" placeholder="Your First Name"
                                required="required" data-validation-required-message="Please enter first name" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <input type="text" class="form-control" name="lname" placeholder="Your last Name"
                                required="required" data-validation-required-message="Please enter last name" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <input type="email" class="form-control" id="email" placeholder="Your Email"
                                required="required" data-validation-required-message="Please enter your email" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <input type="text" class="form-control" name="mobile" placeholder="Your Mobile Number"
                                required="required" data-validation-required-message="Please enter Mobile name" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <input type="password" class="form-control" name="password" placeholder="Your password"
                                required="required" data-validation-required-message="Please enter password" />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <input type="password" class="form-control" name="cpassword" placeholder="Confirm Password"
                                required="required" data-validation-required-message="Please enter Confirm Password" />
                            <p class="help-block text-danger"></p>
                        </div>
                      
                       
                        <div>
                        <input type="submit" value="Registration" name="action"class="btn btn-primary py-2 px-4" >
                            
                        </div>
                    </form>
                </div>
            </div>
           
        </div>
    </div>
    <!-- Contact End -->
	
	

	<!-- footer file include -->
	<%@include file="footer.jsp"%>
	


</body>
</html>