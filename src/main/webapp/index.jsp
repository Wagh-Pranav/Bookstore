

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="bookstore.connection.DbCon"%>
<%@page import="bookstore.model.*"%>
<%@page import="bookstore.dao.*"%>
<%@page import=" java.util.*"%>


<%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) 
{
	request.setAttribute("auth", auth);
}
 
BookDao bd = new BookDao(DbCon.getConnection());
List<Book> books = bd.getAllProducts();

AuthorDao ad = new AuthorDao(DbCon.getConnection());
List<Author> authors = ad.getAllAuthor();


%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<%@include file="includes/header.jsp"%>
</head>
<body>
	<!-- loader Start -->
	<div id="loading">
		<div id="loading-center"></div>
	</div>
	<!-- loader END -->
	<!-- Wrapper Start -->
	<div class="wrapper">

		<%@include file="includes/sidebar.jsp"%>

		<%@include file="includes/navbar.jsp"%>





		<!-- Page Content  -->
		<div id="content-page" class="content-page">
			<div class="container-fluid">
				<div class="row">

					<div class="col-lg-12">
						<div
							class="iq-card-transparent iq-card-block iq-card-stretch iq-card-height rounded">
							<div class="newrealease-contens">

								<ul id="newrealease-slider"
									class="list-inline p-0 m-0 d-flex align-items-center">
									<%
									if (!books.isEmpty()) {
										for (Book b : books) {
											System.out.println(b.getAuthor());
									%>
									<li class="item"><a href="javascript:void();"> <img
											src="images/books/<%=b.getImage()%>"
											class="img-fluid w-100 rounded" alt="missing<%=b.getName()%>">
									</a></li>
									<%
									}
									}
									%>
								</ul>

							</div>
						</div>
					</div>

					<div class="col-lg-12">
						<div class="iq-card iq-card-block iq-card-stretch iq-card-height">
							<div class="iq-card-header d-flex justify-content-between align-items-center position-relative">
								<div class="iq-header-title">
									<h4 class="card-title mb-0">Browse Books</h4>
								</div>
								<div class="iq-card-header-toolbar d-flex align-items-center">
									<a href="category.jsp" class="btn btn-sm btn-primary view-more">View
										More</a>
								</div>
							</div>
							<div class="iq-card-body">
								<div class="row">

									<%
									if (!books.isEmpty()) {
										for (Book b : books) {
									%>
									<div class="col-sm-6 col-md-4 col-lg-3">
										<div
											class="iq-card iq-card-block iq-card-stretch iq-card-height browse-bookcontent">

											<div class="iq-card-body p-0">
												<div class="d-flex align-items-center">
													<div
														class="col-6 p-0 position-relative image-overlap-shadow">
														<a href="javascript:void();"><img
															class="img-fluid rounded w-100"
															src="images/books/<%=b.getImage()%>" alt="<%=b.getName()%>"></a>
														<div class="view-book">
															<a href="book-page.jsp?id=<%= b.getId() %>" class="btn btn-sm btn-white">View
																Book</a>
														</div>
													</div>
													<div class="col-6">
														<div class="mb-2">
															<h6 class="mb-1">  <%=b.getName()%>   </h6>
															<p class="font-size-13 line-height mb-1"><%=b.getAuthor()%></p>
															<div class="d-block line-height">
																<span class="font-size-11 text-warning"> <i
																	class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i>
																</span>
															</div>
														</div>
														<div class="price d-flex align-items-center">
															<span class="pr-1 old-price"><span>&#8377;</span>  <%=b.getPrice()%>  </span>
															<h6>
																<b><span>&#8377;</span>89</b>
															</h6>
														</div>
														<div class="iq-product-action">
															<a href="add-to-cart?id=<%= b.getId() %>"><i
																class="ri-shopping-cart-2-fill text-primary"></i></a> <a
																href="javascript:void();" class="ml-2"><i
																class="ri-heart-fill text-danger"></i></a>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<%
									}
									}
									%>
								</div>
							</div>
							</div>
						</div>
					
					<div class="col-lg-6">
						<div class="iq-card iq-card-block iq-card-stretch iq-card-height">
							<div class="iq-card-header d-flex justify-content-between mb-0">
								<div class="iq-header-title">
									<h4 class="card-title">Featured Books</h4>
								</div>
								<div class="iq-card-header-toolbar d-flex align-items-center">
									<div class="dropdown">
										<span class="dropdown-toggle p-0 text-body"
											id="dropdownMenuButton2" data-toggle="dropdown"> This
											Week<i class="ri-arrow-down-s-fill"></i>
										</span>
										<div class="dropdown-menu dropdown-menu-right shadow-none"
											aria-labelledby="dropdownMenuButton2">
											<a class="dropdown-item" href="#"><i
												class="ri-eye-fill mr-2"></i>View</a> <a class="dropdown-item"
												href="#"><i class="ri-delete-bin-6-fill mr-2"></i>Delete</a>
											<a class="dropdown-item" href="#"><i
												class="ri-pencil-fill mr-2"></i>Edit</a> <a
												class="dropdown-item" href="#"><i
												class="ri-printer-fill mr-2"></i>Print</a> <a
												class="dropdown-item" href="#"><i
												class="ri-file-download-fill mr-2"></i>Download</a>
										</div>
									</div>
								</div>
							</div>
							
							<div class="iq-card-body">
								<div class="row align-items-center">
									<div class="col-sm-5 pr-0">
										<a href="javascript:void();"><img
											class="img-fluid rounded w-100"
											src="images/books/the-last-of-us.jpg" alt=""></a>
									</div>
									<div class="col-sm-7 mt-3 mt-sm-0">
										<h4 class="mb-2">The Art of Last of Us</h4>
										<p class="mb-2">Author: Rachel Edidin </p>
										<div class="mb-2 d-block">
											<span class="font-size-12 text-warning"> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i>
											</span>
										</div>
										<span class="text-dark mb-3 d-block"> Naughty Dog Studios and Dark Horse proudly present the essential companion to The Last of Us, a richly detailed and compelling game set in a postpandemic world where humans have become an endangered species.  </span>
										<button type="submit" class="btn btn-primary learn-more">Learn
											More</button>
									</div>
								</div>
							</div>
							
						</div>
					</div>
					
					<div class="col-lg-6">
						<div class="iq-card iq-card-block iq-card-stretch iq-card-height">
							<div class="iq-card-header d-flex justify-content-between mb-0">
								<div class="iq-header-title">
									<h4 class="card-title">Featured Writer</h4>
								</div>
								<div class="iq-card-header-toolbar d-flex align-items-center">
									<div class="dropdown">
										<span class="dropdown-toggle p-0 text-body"
											id="dropdownMenuButton3" data-toggle="dropdown"> This
											Week<i class="ri-arrow-down-s-fill"></i>
										</span>
										<div class="dropdown-menu dropdown-menu-right shadow-none"
											aria-labelledby="dropdownMenuButton3">
											<a class="dropdown-item" href="#"><i
												class="ri-eye-fill mr-2"></i>View</a> <a class="dropdown-item"
												href="#"><i class="ri-delete-bin-6-fill mr-2"></i>Delete</a>
											<a class="dropdown-item" href="#"><i
												class="ri-pencil-fill mr-2"></i>Edit</a> <a
												class="dropdown-item" href="#"><i
												class="ri-printer-fill mr-2"></i>Print</a> <a
												class="dropdown-item" href="#"><i
												class="ri-file-download-fill mr-2"></i>Download</a>
										</div>
									</div>
								</div>
							</div>
							
							
							<div class="iq-card-body">
								<ul class="list-inline row mb-0 align-items-center iq-scrollable-block">
								<%
									if (!authors.isEmpty()) {
										for (Author a : authors) {
											System.out.println(a.getAuthor_id());
									%>
									<li class="col-sm-6 d-flex mb-3 align-items-center">
									
										<div class="icon iq-icon-box mr-3">
											<a href="javascript:void();"><img
												class="img-fluid avatar-60 rounded-circle"
												src="images/author-pic/<%=a.getAuthor_pic() %>" alt="<%=a.getAuthor_name()%>"></a>
										</div>
										<div class="mt-1">
											<h6><%=a.getAuthor_name() %></h6>
											<p class="mb-0 text-primary">
												Publish Books: <span class="text-body"><%=a.getBook_published() %></span>
											</p>
										</div>
									</li>
									<%}} %>
								</ul>
							</div>
						
						</div>
					</div>
					
					</div>
					<div class="col-lg-12">
						<div class="iq-card iq-card-block iq-card-stretch iq-card-height">
							<div
								class="iq-card-header d-flex justify-content-between align-items-center position-relative">
								<div class="iq-header-title">
									<h4 class="card-title mb-0">Favorite Reads</h4>
								</div>
								<div class="iq-card-header-toolbar d-flex align-items-center">
									<a href="category.jsp" class="btn btn-sm btn-primary view-more">View
										More</a>
								</div>
							</div>
							<div class="iq-card-body favorites-contens">
								<ul id="favorites-slider" class="list-inline p-0 mb-0 row">
									<li class="col-md-4">
										<div class="d-flex align-items-center">
											<div class="col-5 p-0 position-relative">
												<a href="javascript:void();"> <img
													src="images/favorite/01.jpg"
													class="img-fluid rounded w-100" alt="">
												</a>
											</div>
											<div class="col-7">
												<h5 class="mb-2">Every Book is a new Wonderful Travel..</h5>
												<p class="mb-2">Author : Pedro Araez</p>
												<div
													class="d-flex justify-content-between align-items-center text-dark font-size-13">
													<span>Reading</span> <span class="mr-4">78%</span>
												</div>
												<div class="iq-progress-bar-linear d-inline-block w-100">
													<div class="iq-progress-bar iq-bg-primary">
														<span class="bg-primary" data-percent="78"></span>
													</div>
												</div>
												<a href="#" class="text-dark">Show Details<i
													class="ri-arrow-right-s-line"></i></a>
											</div>
										</div>
									</li>
									<li class="col-md-4">
										<div class="d-flex align-items-center">
											<div class="col-5 p-0 position-relative">
												<a href="javascript:void();"> <img
													src="images/favorite/02.jpg"
													class="img-fluid rounded w-100" alt="">
												</a>
											</div>
											<div class="col-7">
												<h5 class="mb-2">Casey Christie night book into find...</h5>
												<p class="mb-2">Author : Michael klock</p>
												<div
													class="d-flex justify-content-between align-items-center text-dark font-size-13">
													<span>Reading</span> <span class="mr-4">78%</span>
												</div>
												<div class="iq-progress-bar-linear d-inline-block w-100">
													<div class="iq-progress-bar iq-bg-danger">
														<span class="bg-danger" data-percent="78"></span>
													</div>
												</div>
												<a href="#" class="text-dark">Read Now<i
													class="ri-arrow-right-s-line"></i></a>
											</div>
										</div>
									</li>
									<li class="col-md-4">
										<div class="d-flex align-items-center">
											<div class="col-5 p-0 position-relative">
												<a href="javascript:void();"> <img
													src="images/favorite/03.jpg"
													class="img-fluid rounded w-100" alt="">
												</a>
											</div>
											<div class="col-7">
												<h5 class="mb-2">The Secret to English Busy People..</h5>
												<p class="mb-2">Author : Daniel Ace</p>
												<div
													class="d-flex justify-content-between align-items-center text-dark font-size-13">
													<span>Reading</span> <span class="mr-4">78%</span>
												</div>
												<div class="iq-progress-bar-linear d-inline-block w-100">
													<div class="iq-progress-bar iq-bg-info">
														<span class="bg-info" data-percent="78"></span>
													</div>
												</div>
												<a href="#" class="text-dark">Read Now<i
													class="ri-arrow-right-s-line"></i></a>
											</div>
										</div>
									</li>
									<li class="col-md-4">
										<div class="d-flex align-items-center">
											<div class="col-5 p-0 position-relative">
												<a href="javascript:void();"> <img
													src="images/favorite/04.jpg"
													class="img-fluid rounded w-100" alt="">
												</a>
											</div>
											<div class="col-7">
												<h5 class="mb-2">The adventures of Robins books...</h5>
												<p class="mb-2">Author : Luka Afton</p>
												<div
													class="d-flex justify-content-between align-items-center text-dark font-size-13">
													<span>Reading</span> <span class="mr-4">78%</span>
												</div>
												<div class="iq-progress-bar-linear d-inline-block w-100">
													<div class="iq-progress-bar iq-bg-success">
														<span class="bg-success" data-percent="78"></span>
													</div>
												</div>
												<a href="#" class="text-dark">Read Now<i
													class="ri-arrow-right-s-line"></i></a>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<!-- Wrapper END -->
	<!-- Footer -->
	<footer class="iq-footer">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-6">
					<ul class="list-inline mb-0">
						<li class="list-inline-item"><a href="privacy-policy.html">Privacy
								Policy</a></li>
						<li class="list-inline-item"><a href="terms-of-service.html">Terms
								of Use</a></li>
					</ul>
				</div>
				<div class="col-lg-6 text-right">
					Copyright 2020 <a href="index.jsp">Bookstore</a> All Rights Reserved.
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer END -->
	<%@include file="includes/footer.jsp"%>
</body>
</html>