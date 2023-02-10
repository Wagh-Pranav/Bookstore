

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="bookstore.connection.DbCon"%>
<%@page import="bookstore.model.*"%>
<%@page import="bookstore.dao.*"%>
<%@page import=" java.util.*"%>
<%

ArrayList <Cart> cart_list =(ArrayList <Cart>) session.getAttribute("cart-list");
List<Cart> cartProduct=null;
if(cart_list!=null)
{
	BookDao bdao=new BookDao(DbCon.getConnection());
	cartProduct= bdao.getCartProduct(cart_list);
	request.setAttribute(" cart_list",cart_list);
} 

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Top NavBar</title>
</head>
<body>
	<!-- TOP Nav Bar -->
	<div class="iq-top-navbar">
		<div class="iq-navbar-custom">
			<nav class="navbar navbar-expand-lg navbar-light p-0">
				<div class="iq-menu-bt d-flex align-items-center">
					<div class="wrapper-menu">
						<div class="main-circle">
							<i class="las la-bars"></i>
						</div>
					</div>
					<div class="iq-navbar-logo d-flex justify-content-between">
						<a href="index.jsp" class="header-logo"> <img
							src="images/logo.png" class="img-fluid rounded-normal" alt="">
							<div class="logo-title">
								<span class="text-primary text-uppercase">Bookstore</span>
							</div>
						</a>
					</div>
				</div>
				<div class="navbar-breadcrumb">
					<h5 class="mb-0">Shop</h5>
					<nav aria-label="breadcrumb">
						<ul class="breadcrumb">
							<li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
							<li class="breadcrumb-item active" aria-current="page">Home
								Page</li>
						</ul>
					</nav>
				</div>
				<div class="iq-search-bar">
					<form action="#" class="searchbox">
						<input type="text" class="text search-input"
							placeholder="Search Here..."> <a class="search-link"
							href="#"><i class="ri-search-line"></i></a>
					</form>
				</div>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent"
					aria-label="Toggle navigation">
					<i class="ri-menu-3-line"></i>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav ml-auto navbar-list">
						<li class="nav-item nav-icon search-content"><a href="#"
							class="search-toggle iq-waves-effect text-gray rounded"> <i
								class="ri-search-line"></i>
						</a>
							<form action="#" class="search-box p-0">
								<input type="text" class="text search-input"
									placeholder="Type here to search..."> <a
									class="search-link" href="#"><i class="ri-search-line"></i></a>
							</form></li>


						<%
						if (auth == null) {
						%>
						<li class="nav-item nav-icon dropdown"><a href="sign-in.jsp"
							class="search-toggle iq-waves-effect text-gray rounded"> <i
								class="fa fa-user-o" aria-hidden="true"></i></a></li>
						<%
						}
						%>


						<li class="nav-item nav-icon dropdown"><a href="#"
							class="search-toggle iq-waves-effect text-gray rounded"> <i
								class="ri-shopping-cart-2-line"></i> <span
								class="badge badge-danger count-cart rounded-circle"><%=(cart_list.size())%> <%-- <% String.valueOf(cart_list.size());%> --%></span>

						
						</a>
							<div class="iq-sub-dropdown">
								<div class="iq-card shadow-none m-0">
									<div class="iq-card-body p-0 toggle-cart-info">
										<div class="bg-primary p-3">
											<h5 class="mb-0 text-white">
												All Carts<small class="badge  badge-light float-right pt-1"><%=(cart_list.size())%></small>
											</h5>
										</div>
										 <%
                                       if(cart_list != null)
                                       {
                                    	   for(Cart c: cartProduct)
                                    	   {%>
										<a href="#" class="iq-sub-card">
											<div class="media align-items-center">
												<div class="">
													<img class="rounded" src="images/books/<%=c.getImage() %>" alt="">
												</div>
												<div class="media-body ml-3">
													<h6 class="mb-0 "><%=c.getName() %></h6>
													<p class="mb-0"><%=c.getPrice() %></p>
												</div>
												<div class="float-right font-size-24 text-danger">
													<i class="ri-close-fill"></i>
												</div>
											</div>
										</a> 
										<%
										}
                                       }
                                       
                                       %>
										<div class="d-flex align-items-center text-center p-3">
											<a class="btn btn-primary mr-2 iq-sign-btn" href="Checkout.jsp"
												role="button">View Cart</a> <a
												class="btn btn-primary iq-sign-btn" href="#" role="button">Shop
												now</a>
										</div>
									</div>
								</div>
							</div> 
							<%
 							if (auth != null) {
 							%> 											
 							<%@include file="user-profile-dropdown.jsp"%>
							<%
							}
							%>
					</ul>
				</div>
			</nav>
		</div>
	</div>
	<!-- TOP Nav Bar END -->
</body>
</html>