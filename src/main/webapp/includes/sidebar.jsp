<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="bookstore.connection.DbCon"%>
<%@page import="bookstore.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sidebar</title>
</head>
<body>

<!-- Sidebar  -->
         <div class="iq-sidebar">
            <div class="iq-sidebar-logo d-flex justify-content-between">
               <a href="index.jsp" class="header-logo">
                  <img src="images/logo.png" class="img-fluid rounded-normal" alt="">
                  <div class="logo-title">
                     <span class="text-primary text-uppercase">Bookstore</span>
                  </div>
               </a>
               <div class="iq-menu-bt-sidebar">
                  <div class="iq-menu-bt align-self-center">
                     <div class="wrapper-menu">
                        <div class="main-circle"><i class="las la-bars"></i></div>
                     </div>
                  </div>
               </div>
            </div>
            <div id="sidebar-scrollbar">
               <nav class="iq-sidebar-menu">
                  <ul id="iq-sidebar-toggle" class="iq-menu">
                  
                     <li class="active active-menu">
                        <a href="#dashboard" class="iq-waves-effect" data-toggle="collapse" aria-expanded="true"><span class="ripple rippleEffect"></span><i class="las la-home iq-arrow-left"></i><span>Shop</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                        <ul id="dashboard" class="iq-submenu collapse show" data-parent="#iq-sidebar-toggle">
                           <li class="active"><a href="index.jsp"><i class="las la-house-damage"></i>Home Page</a></li>
                           <li><a href="category.jsp"><i class="ri-function-line"></i>Category Page</a></li>
                           <li><a href="book-page.jsp"><i class="ri-book-line"></i>Book Page</a></li>
                           <li><a href="Checkout.jsp"><i class="ri-checkbox-multiple-blank-line"></i>Checkout</a></li>
                          <li><a href="wishlist.jsp"><i class="ri-heart-line"></i>wishlist</a></li>
                        </ul>
                     </li>
                    	<%
						if (auth != null) {
						%>
						<li>
                        <a href="#userinfo" class="iq-waves-effect" data-toggle="collapse" aria-expanded="false"><span class="ripple rippleEffect"></span><i class="las la-user-tie iq-arrow-left"></i><span>User</span><i class="ri-arrow-right-s-line iq-arrow-right"></i></a>
                        <ul id="userinfo" class="iq-submenu collapse" data-parent="#iq-sidebar-toggle" style="">
                           <li><a href="profile.jsp"><i class="las la-id-card-alt"></i>User Profile</a></li>
                           <li><a href="profile-edit.jsp"><i class="las la-edit"></i>User Edit</a></li>
                        </ul>
                    	</li>
						
						<%
						}
						%>
                     
                     
                  </ul>
               </nav>
            </div>
         </div>
</body>
</html>