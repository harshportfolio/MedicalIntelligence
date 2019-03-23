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
  <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/simple-line-icons.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/flag-icon.min.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/perfect-scrollbar.min.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="<%=request.getContextPath()%>/adminResources/images/favicon.png" />
</head>

<body>
  <div class="container-scroller">
    <!-- partial:../../partials/_navbar.html -->
<jsp:include page="header.jsp"></jsp:include>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <div class="row row-offcanvas row-offcanvas-right">
        <!-- partial:../../partials/_settings-panel.html -->
        <div class="theme-setting-wrapper">
          <div id="settings-trigger"><i class="mdi mdi-settings"></i></div>
          <div id="theme-settings" class="settings-panel">
            <i class="settings-close mdi mdi-close"></i>
            <p class="settings-heading">SIDEBAR SKINS</p>
            <div class="sidebar-bg-options selected" id="sidebar-light-theme"><div class="img-ss rounded-circle bg-light border mr-3"></div>Light</div>
            <div class="sidebar-bg-options" id="sidebar-dark-theme"><div class="img-ss rounded-circle bg-dark border mr-3"></div>Dark</div>
            <p class="settings-heading mt-2">HEADER SKINS</p>
            <div class="color-tiles mx-0 px-4">
              <div class="tiles primary"></div>
              <div class="tiles success"></div>
              <div class="tiles warning"></div>
              <div class="tiles danger"></div>
              <div class="tiles pink"></div>
              <div class="tiles info"></div>
              <div class="tiles dark"></div>
              <div class="tiles default"></div>
            </div>
          </div>
        </div>
        <div id="right-sidebar" class="settings-panel">
          <i class="settings-close mdi mdi-close"></i>
          <ul class="nav nav-tabs" id="setting-panel" role="tablist">
            <li class="nav-item">
              <a class="nav-link active" id="todo-tab" data-toggle="tab" href="#todo-section" role="tab" aria-controls="todo-section" aria-expanded="true">TO DO LIST</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" id="chats-tab" data-toggle="tab" href="#chats-section" role="tab" aria-controls="chats-section">CHATS</a>
            </li>
          </ul>
          <div class="tab-content" id="setting-content">
            <div class="tab-pane fade show active scroll-wrapper" id="todo-section" role="tabpanel" aria-labelledby="todo-section">
              <div class="add-items d-flex px-3 mb-0">
                <form class="form w-100">
                  <div class="form-group d-flex">
                    <input type="text" class="form-control todo-list-input" placeholder="Add To-do">
                    <button type="submit" class="add btn btn-primary todo-list-add-btn" id="add-task">Add</button>
                  </div>
                </form>
              </div>
              <div class="list-wrapper px-3">
                <ul class="d-flex flex-column-reverse todo-list">
                  <li>
                    <div class="form-check">
                      <label class="form-check-label">
                        <input class="checkbox" type="checkbox">
                        Team review meeting at 3.00 PM
                      </label>
                    </div>
                    <i class="remove mdi mdi-close-circle-outline"></i>
                  </li>
                  <li>
                    <div class="form-check">
                      <label class="form-check-label">
                        <input class="checkbox" type="checkbox">
                        Prepare for presentation
                      </label>
                    </div>
                    <i class="remove mdi mdi-close-circle-outline"></i>
                  </li>
                  <li>
                    <div class="form-check">
                      <label class="form-check-label">
                        <input class="checkbox" type="checkbox">
                        Resolve all the low priority tickets due today
                      </label>
                    </div>
                    <i class="remove mdi mdi-close-circle-outline"></i>
                  </li>
                  <li class="completed">
                    <div class="form-check">
                      <label class="form-check-label">
                        <input class="checkbox" type="checkbox" checked>
                        Schedule meeting for next week
                      </label>
                    </div>
                    <i class="remove mdi mdi-close-circle-outline"></i>
                  </li>
                  <li class="completed">
                    <div class="form-check">
                      <label class="form-check-label">
                        <input class="checkbox" type="checkbox" checked>
                        Project review
                      </label>
                    </div>
                    <i class="remove mdi mdi-close-circle-outline"></i>
                  </li>
                </ul>
              </div>
              <div class="events py-4 border-bottom px-3">
                <div class="wrapper d-flex mb-2">
                  <i class="mdi mdi-circle-outline text-primary mr-2"></i>
                  <span>Feb 11 2018</span>
                </div>
                <p class="mb-0 font-weight-thin text-gray">Creating component page</p>
                <p class="text-gray mb-0">build a js based app</p>
              </div>
              <div class="events pt-4 px-3">
                <div class="wrapper d-flex mb-2">
                  <i class="mdi mdi-circle-outline text-primary mr-2"></i>
                  <span>Feb 7 2018</span>
                </div>
                <p class="mb-0 font-weight-thin text-gray">Meeting with Alisa</p>
                <p class="text-gray mb-0 ">Call Sarah Graves</p>
              </div>
            </div>
            <!-- To do section tab ends -->
            <div class="tab-pane fade" id="chats-section" role="tabpanel" aria-labelledby="chats-section">
              <div class="d-flex align-items-center justify-content-between border-bottom">
                <p class="settings-heading border-top-0 mb-3 pl-3 pt-0 border-bottom-0 pb-0">Friends</p>
                <small class="settings-heading border-top-0 mb-3 pt-0 border-bottom-0 pb-0 pr-3 font-weight-normal">See All</small>
              </div>
              <ul class="chat-list">
                <li class="list active">
                  <div class="profile"><img src="<%=request.getContextPath()%>/adminResources/image/face1.jpg" alt="image"><span class="online"></span></div>
                  <div class="info">
                    <p>Thomas Douglas</p>
                    <p>Available</p>
                  </div>
                  <small class="text-muted my-auto">19 min</small>
                </li>
                <li class="list">
                  <div class="profile"><img src="<%=request.getContextPath()%>/adminResources/image/face2.jpg" alt="image"><span class="offline"></span></div>
                  <div class="info">
                    <div class="wrapper d-flex">
                      <p>Catherine</p>
                    </div>
                    <p>Away</p>
                  </div>
                  <div class="badge badge-success badge-pill my-auto mx-2">4</div>
                  <small class="text-muted my-auto">23 min</small>
                </li>
                <li class="list">
                  <div class="profile"><img src="<%=request.getContextPath()%>/adminResources/image/face3.jpg" alt="image"><span class="online"></span></div>
                  <div class="info">
                    <p>Daniel Russell</p>
                    <p>Available</p>
                  </div>
                  <small class="text-muted my-auto">14 min</small>
                </li>
                <li class="list">
                  <div class="profile"><img src="<%=request.getContextPath()%>/adminResources/image/face4.jpg" alt="image"><span class="offline"></span></div>
                  <div class="info">
                    <p>James Richardson</p>
                    <p>Away</p>
                  </div>
                  <small class="text-muted my-auto">2 min</small>
                </li>
                <li class="list">
                  <div class="profile"><img src="<%=request.getContextPath()%>/adminResources/image/face5.jpg" alt="image"><span class="online"></span></div>
                  <div class="info">
                    <p>Madeline Kennedy</p>
                    <p>Available</p>
                  </div>
                  <small class="text-muted my-auto">5 min</small>
                </li>
                <li class="list">
                  <div class="profile"><img src="<%=request.getContextPath()%>/adminResources/image/face6.jpg" alt="image"><span class="online"></span></div>
                  <div class="info">
                    <p>Sarah Graves</p>
                    <p>Available</p>
                  </div>
                  <small class="text-muted my-auto">47 min</small>
                </li>
              </ul>
            </div>
            <!-- chat tab ends -->
          </div>
        </div>
        <!-- partial -->
        <!-- partial:../../partials/_sidebar.html -->
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
          <jsp:include page="menu.jsp"></jsp:include>
        </nav>
        <!-- partial -->
        <div class="content-wrapper">
        
          <!-- <div class="row grid-margin">
            <div class="col-12">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Bootstrap Maxlength</h4>
                  <div class="form-group row">
                    <div class="col-lg-3">
                      <label class="col-form-label">Default usage</label>
                    </div>
                    <div class="col-lg-8">
                      <input class="form-control" maxlength="25" name="defaultconfig" id="defaultconfig" type="text" placeholder="Type Something..">
                    </div>
                  </div>
                  <div class="form-group row">
                    <div class="col-lg-3">
                      <label class="col-form-label">Few options</label>
                    </div>
                    <div class="col-lg-8">
                      <input class="form-control" maxlength="20" name="defaultconfig-2" id="defaultconfig-2" type="text" placeholder="Type Something..">
                    </div>
                  </div>
                  <div class="form-group row">
                    <div class="col-lg-3">
                      <label class="col-form-label">All the options</label>
                    </div>
                    <div class="col-lg-8">
                      <input class="form-control" maxlength="10" name="defaultconfig-3" id="defaultconfig-3" type="text" placeholder="Type Something..">
                    </div>
                  </div>
                  <div class="form-group row">
                    <div class="col-lg-3">
                      <label class="col-form-label">Text Area</label>
                    </div>
                    <div class="col-lg-8">
                      <textarea id="maxlength-textarea" class="form-control" maxlength="100" rows="2" placeholder="This textarea has a limit of 100 chars."></textarea>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>-->
          
          <div class="row grid-margin">
            <div class="col-lg-12">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Add Dataset</h4>
                  
                  <f:form class="cmxform" method="post" action="insertDataset" modelAttribute="DatasetVO" enctype="multipart/form-data">
                    <fieldset>
                      
                       <div class="form-group">
                        <label for="cemail">File <sup><span style="color: red;">*</span></sup></label>
                        <input id="cemail" class="form-control" type="file" name="file" required="required">
                      </div>
                      
                      
                      <div class="form-group">
                        <label for="ccomment">Dataset Description <sup><span style="color: red;">*</span></sup></label>
                        <f:textarea id="ccomment" class="form-control" path="datasetDescription" required="required"></f:textarea>
                      </div>
                      
                    
                      <input class="btn btn-primary" type="submit" value="Submit">
                    </fieldset>
                  </f:form>
                
                
                </div>
              </div>
            </div>
          </div>
          
          
         <!--  <div class="row grid-margin">
            <div class="col-lg-12">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Add Dataset</h4>
                  <form class="cmxform" id="signupForm" method="get" action="#">
                    <fieldset>
                      <div class="form-group">
                        <label for="firstname">Firstname <sup><span style="color: red;">*</span></sup></label>
                        <input id="firstname" class="form-control" name="firstname" type="text">
                      </div>
                      <div class="form-group">
                        <label for="lastname">Lastname <sup><span style="color: red;">*</span></sup></label>
                        <input id="lastname" class="form-control" name="lastname" type="text">
                      </div>
                      <div class="form-group">
                        <label for="email">Email <sup><span style="color: red;">*</span></sup></label>
                        <input id="email" class="form-control" name="email" type="email">
                      </div>
                      <div class="form-group">
                        <label for="password">Password <sup><span style="color: red;">*</span></sup></label>
                        <input id="password" class="form-control" name="password" type="password">
                      </div>
                      <div class="form-group">
                        <label for="confirm_password">Confirm password <sup><span style="color: red;">*</span></sup></label>
                        <input id="confirm_password" class="form-control" name="confirm_password" type="password">
                      </div>
                      
                      <div class="form-group">
                      <label for="gender">Gender <sup><span style="color: red;">*</span></sup></label>
                      <input id="male" type="radio" class="form-control" name="gender" value="male" checked ><label for="male">Male</label>
                      <input id="female" type="radio" class="form-control" name="gender" value="female" ><label for="female">Female</label>
                      </div>
                      <div class="form-group">
                       <label for="select">Educational Degree <sup><span style="color: red;">*</span></sup></label>
                     		<select name="degree" class="form-control" required="required">
								<option value="0" disabled="disabled" selected>--Select--</option>
								<option value="Orthopedic">Orthopedic</option>
								<option value="M.B.B.S.">M.B.B.S.</option>
								<option value="Other">Other</option>
							</select>
                      </div>
                  		<div class="form-group">
                        <label for="phone">Phone Number <sup><span style="color: red;">*</span></sup></label>
                        <input id="phone" class="form-control" name="phone" type="number" />
                      </div>                  		
                      <div class="form-group">
                        <label for="hospitalname">Hospital Name <sup><span style="color: red;">*</span></sup></label>
                        <input id="hospitalname" class="form-control" name="hospitalname" type="text">
                      </div>
                       <div class="form-group">
                        <label for="ccomment">Hospital Address (Optional)</label> 
                        <textarea id="ccomment" class="form-control" name="comment"></textarea>
                      </div>
                      <div class="form-group">
                        <label for="ccomment">Residential Address (Optional)</label> 
                        <textarea id="ccomment" class="form-control" name="comment"></textarea>
                      </div>
                      <input class="btn btn-primary" type="submit" value="Submit">
                    </fieldset>
                  </form>
                </div>
              </div>
            </div>
          </div> -->
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:../../partials/_footer.html -->
        <footer class="footer">
          <jsp:include page="footer.jsp"></jsp:include>
        </footer>
        <!-- partial -->
      </div>
      <!-- row-offcanvas ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- plugins:js -->
  <script src="<%=request.getContextPath()%>/adminResources/js/jquery.min.js"></script>
  <script src="<%=request.getContextPath()%>/adminResources/js/popper.min.js"></script>
  <script src="<%=request.getContextPath()%>/adminResources/js/bootstrap.min.js"></script>
  <script src="<%=request.getContextPath()%>/adminResources/js/perfect-scrollbar.jquery.min.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <script src="adminResources/js/jquery.validate.min.js"></script>
  <script src="adminResources/js/bootstrap-maxlength.min.js"></script>
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="<%=request.getContextPath()%>/adminResources/js/off-canvas.js"></script>
  <script src="<%=request.getContextPath()%>/adminResources/js/hoverable-collapse.js"></script>
  <script src="<%=request.getContextPath()%>/adminResources/js/misc.js"></script>
  <script src="<%=request.getContextPath()%>/adminResources/js/settings.js"></script>
  <script src="<%=request.getContextPath()%>/adminResources/js/todolist.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="<%=request.getContextPath()%>/adminResources/js/form-validation.js"></script>
  <script src="<%=request.getContextPath()%>/adminResources/js/bt-maxLength.js"></script>
  <!-- End custom js for this page-->
</body>

</html>
