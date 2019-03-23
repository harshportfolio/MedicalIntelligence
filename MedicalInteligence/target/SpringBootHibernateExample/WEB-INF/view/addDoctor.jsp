<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>MI Admin</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="adminResources/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="adminResources/css/simple-line-icons.css">
  <link rel="stylesheet" href="adminResources/css/flag-icon.min.css">
  <link rel="stylesheet" href="adminResources/css/perfect-scrollbar.min.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="adminResources/css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="adminResources/images/favicon.png" />
</head>

<body>
  <div class="container-scroller">
   
        <div class="content-wrapper">
          <div class="row grid-margin">
            <div class="col-lg-12">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Doctor Registration</h4>
                  <f:form method="post" action="insertDoctor" modelAttribute="doctorVO"> 
                    <fieldset>
                      <div class="form-group">
                        <label for="firstname">Firstname <sup><span style="color: red;">*</span></sup></label>
                        <f:input path="firstName"  id="firstname" class="form-control" type="text" required="required"/>
                      </div>
                      <div class="form-group">
                        <label for="lastname">Lastname <sup><span style="color: red;">*</span></sup></label>
                        <f:input id="lastname" path="lastName" class="form-control"  type="text" required="required"/>
                      </div>
                      <div class="form-group">
                        <label for="email">Email <sup><span style="color: red;">*</span></sup></label>
                        <f:input id="email" path="email" class="form-control"  type="email" required="required"/>
                      </div>
                      <div class="form-group">
                        <label for="password">Password <sup><span style="color: red;">*</span></sup></label>
                        <f:password id="password" path="password" class="form-control" required="required"/>
                      </div>
                      <div class="form-group">
                        <label for="confirm_password">Confirm password <sup><span style="color: red;">*</span></sup></label>
                        <f:password path="confirmPassword" id="confirm_password" class="form-control" required="required" />
                      </div>
                      
                      <div class="form-group">
                      <label for="gender">Gender <sup><span style="color: red;">*</span></sup></label>
                      <f:radiobutton path="gender" id="male" class="form-control" value="male" checked="checked" required="required"></f:radiobutton><label for="male">Male</label>
                      <f:radiobutton path="gender" id="female" class="form-control" value="female" required="required"></f:radiobutton><label for="female">Female</label>
                      </div>
                      <div class="form-group">
                       <label for="select">Educational Degree <sup><span style="color: red;">*</span></sup></label>
                     		<f:select path="degree" class="form-control" required="required">
								<f:option value="0" disabled="disabled" selected="selected" required="required">--Select--</f:option>
								<f:option value="Orthopedic">Orthopedic</f:option>
								<f:option value="M.B.B.S.">M.B.B.S.</f:option>
								<f:option value="Other">Other</f:option>
							</f:select>
                      </div>
                  		<div class="form-group">
                        <label for="phone">Phone Number <sup><span style="color: red;">*</span></sup></label>
                        <f:input path="phoneNumber" id="phoneNumber" class="form-control"  type="number" required="required"/>
                      </div>                  		
                      <div class="form-group">
                        <label for="hospitalname">Hospital Name <sup><span style="color: red;">*</span></sup></label>
                        <f:input id="hospitalname" path="hospitalName" class="form-control"  type="text" required="required"/>
                      </div>
                       <div class="form-group">
                        <label for="ccomment">Hospital Address (Optional)</label> 
                        <f:textarea  path="hospitalAddress" id="ccomment" class="form-control" ></f:textarea>
                      </div>
                      <div class="form-group">
                        <label for="ccomment">Residential Address (Optional)</label> 
                        <f:textarea path="residentialAddress" id="ccomment" class="form-control" ></f:textarea>
                      </div>
                      <input class="btn btn-primary" type="submit" value="Submit">
                    </fieldset>
                  </f:form>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- content-wrapper ends -->
      </div>
      <!-- row-offcanvas ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- plugins:js -->
  <script src="adminResources/js/jquery.min.js"></script>
  <script src="adminResources/js/popper.min.js"></script>
  <script src="adminResources/js/bootstrap.min.js"></script>
  <script src="adminResources/js/perfect-scrollbar.jquery.min.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <script src="adminResources/js/jquery.validate.min.js"></script>
  <script src="adminResources/js/bootstrap-maxlength.min.js"></script>
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="adminResources/js/off-canvas.js"></script>
  <script src="adminResources/js/hoverable-collapse.js"></script>
  <script src="adminResources/js/misc.js"></script>
  <script src="adminResources/js/settings.js"></script>
  <script src="adminResources/js/todolist.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="adminResources/js/form-validation.js"></script>
  <script src="adminResources/js/bt-maxLength.js"></script>
  <!-- End custom js for this page-->
</body>

</html>
