<ul class="nav">
            <li class="nav-item nav-profile">
              <div class="nav-link">
                <div class="profile-image">
                  <img src="<%=request.getContextPath()%>/adminResources/image/admin.png" alt="image"/>
                  <span class="online-status online"></span> <!--change class online to offline or busy as needed-->
                </div>
                <div class="profile-name">
                  <p class="name">
                    ${username}
                  </p>
                  <p class="designation">
                     Admin
                  </p>
                </div>
              </div>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="index">
                <i class="icon-rocket menu-icon"></i>
                <span class="menu-title">Dashboard</span>
         
              </a>
            </li>

	<li class="nav-item d-none d-lg-block"><a class="nav-link"
		data-toggle="collapse" href="#sidebar-layouts" aria-expanded="false"
		aria-controls="sidebar-layouts"> <i class="icon-layers menu-icon"></i>
			<span class="menu-title">Manage Package</span>
	</a>
		<div class="collapse" id="sidebar-layouts">
			<ul class="nav flex-column sub-menu">

				<li class="nav-item"><a class="nav-link"
					href="addPackage">Add Package</a></li>
				<li class="nav-item"><a class="nav-link"
					href="viewPackage">View Package</a></li>
			</ul>
		</div>
	</li>

            <li class="nav-item d-none d-lg-block">
              <a class="nav-link" data-toggle="collapse" href="#sidebar-doctor" aria-expanded="false" aria-controls="sidebar-doctor">
                <i class="icon-layers menu-icon"></i>
                <span class="menu-title">Manage Doctor</span>
              </a>
              <div class="collapse" id="sidebar-doctor">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> 
                  <a class="nav-link" href="viewDoctor">View Doctor</a></li>
                
                </ul>
              </div>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#ui-dataset" aria-expanded="false" aria-controls="ui-dataset">
                <i class="icon-target menu-icon"></i>
                <span class="menu-title">Manage Dataset</span>
              </a>
              <div class="collapse" id="ui-dataset">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="addDataset">Add Dataset</a></li>
                  <li class="nav-item"> <a class="nav-link" href="viewDataset">View Dataset</a></li>
                </ul>
                </div>
            </li>
           <!--  <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#ui-report" aria-expanded="false" aria-controls="ui-report">
                <i class="icon-cup menu-icon"></i>
                <span class="menu-title">Manage Report</span>
              </a>
              <div class="collapse" id="ui-report">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="viewReport">View Report</a></li>
                </ul>
              </div>
            </li> -->
            <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#form-complaint" aria-expanded="false" aria-controls="form-complaint">
                <i class="icon-flag menu-icon"></i>
                <span class="menu-title">Manage Complaint</span>
              </a>
              <div class="collapse" id="form-complaint">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"><a class="nav-link" href="viewComplain">View Complaint</a></li>                
                 
                </ul>
              </div>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="#form-feedback" aria-expanded="false" aria-controls="form-feedback">
                <i class="icon-anchor menu-icon"></i>
                <span class="menu-title">Manage Feedback</span>
              </a>
              <div class="collapse" id="form-feedback">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"><a class="nav-link" href="viewFeedback">View Feedback</a></li>
                
                </ul>
              </div>
            </li>            
          </ul> 
           
          