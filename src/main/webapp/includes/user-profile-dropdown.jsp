<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%

    String fullname = (String) session.getAttribute("fullname");
    String userProfileImage = (String) session.getAttribute("userProfileImage");
    
%>
</head>
<body>
	<li class="line-height pt-3"><a href="#"
		class="search-toggle iq-waves-effect d-flex align-items-center"> <img
			src="images/user/<%=auth.getUserProfileImage() %>" class="img-fluid rounded-circle mr-3"
			alt="user">
			<div class="caption">
				<h6 class="mb-1 line-height"><%=auth.getFullname() %></h6>
				<p class="mb-0 text-primary">$20.32</p>
			</div>
	</a>
		<div class="iq-sub-dropdown iq-user-dropdown">
			<div class="iq-card shadow-none m-0">
				<div class="iq-card-body p-0 ">
					<div class="bg-primary p-3">
						<h5 class="mb-0 text-white line-height">Hello <%=auth.getFullname() %></h5>
						<span class="text-white font-size-12">Available</span>
					</div>
					<a href="profile.jsp" class="iq-sub-card iq-bg-primary-hover">
						<div class="media align-items-center">
							<div class="rounded iq-card-icon iq-bg-primary">
								<i class="ri-file-user-line"></i>
							</div>
							<div class="media-body ml-3">
								<h6 class="mb-0 ">My Profile</h6>
								<p class="mb-0 font-size-12">View personal profile details.</p>
							</div>
						</div>
					</a> 
					<a href="profile-edit.jsp"
						class="iq-sub-card iq-bg-primary-hover">
						<div class="media align-items-center">
							<div class="rounded iq-card-icon iq-bg-primary">
								<i class="ri-profile-line"></i>
							</div>
							<div class="media-body ml-3">
								<h6 class="mb-0 ">Edit Profile</h6>
								<p class="mb-0 font-size-12">Modify your personal details.</p>
							</div>
						</div>
					</a> 
					<a href="account-setting.html"
						class="iq-sub-card iq-bg-primary-hover">
						<div class="media align-items-center">
							<div class="rounded iq-card-icon iq-bg-primary">
								<i class="ri-account-box-line"></i>
							</div>
							<div class="media-body ml-3">
								<h6 class="mb-0 ">Account settings</h6>
								<p class="mb-0 font-size-12">Manage your account parameters.</p>
							</div>
						</div>
					</a>

					<div class="d-inline-block w-100 text-center p-3">
						<a class="bg-primary iq-sign-btn" href="LogoutServlet"
							role="button">Sign out<i class="ri-login-box-line ml-2"></i></a>
					</div>
				</div>
			</div>
		</div></li>
</body>
</html>