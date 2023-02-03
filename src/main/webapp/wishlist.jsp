<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="bookstore.connection.DbCon"%>
<%@page import="bookstore.model.*"%>
<%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
	request.setAttribute("auth", auth);
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Wishlist</title>
<%@include file="includes/header.jsp" %>
</head>
<body>
<!-- loader Start -->
      <div id="loading">
         <div id="loading-center">
         </div>
      </div>
      <!-- loader END -->
      <!-- Wrapper Start -->
      <div class="wrapper">
              
<%@include file="includes/sidebar.jsp" %>
         
<%@include file="includes/navbar.jsp" %>

         <!-- Page Content  -->
         <div id="content-page" class="content-page">
            <div class="container-fluid checkout-content">
               <div class="row">
                  <div class="col-sm-12">
                     <div class="iq-card">
                        <div class="iq-card-header d-flex justify-content-between iq-border-bottom mb-0">
                           <div class="iq-header-title">
                              <h4 class="card-title">Wishlist</h4>
                           </div>
                        </div>
                        <div class="iq-card-body">
                           <ul class="list-inline p-0 m-0">
                              <li class="checkout-product">
                                 <div class="row align-items-center">
                                    <div class="col-sm-3 col-lg-2">
                                       <div class="row align-items-center">
                                          <div class="col-sm-3">
                                             <a href="javascript:void();" class="badge badge-danger"><i class="ri-close-fill"></i></a>
                                          </div>
                                          <div class="col-sm-9">
                                             <span class="checkout-product-img">
                                             <a href="javascript:void();"><img class="img-fluid rounded" src="images/checkout/01.jpg" alt=""></a>
                                             </span>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="col-sm-3 col-lg-4">
                                       <div class="checkout-product-details">
                                          <h5>The Raze night book</h5>
                                          <p class="text-success">In stock</p>
                                          <div class="price">
                                             <h5>$180.00</h5>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="col-sm-6 col-lg-6">
                                       <div class="row">
                                          <div class="col-sm-8">
                                             <div class="row align-items-center mt-2">
                                                <div class="col-sm-7 col-lg-6">
                                                   <button type="button" class="fa fa-minus qty-btn" id="btn-minus"></button>
                                                   <input type="text" id="quantity" value="0">
                                                   <button type="button" class="fa fa-plus qty-btn" id="btn-plus"></button>
                                                </div>
                                                <div class="col-sm-5 col-lg-6">
                                                   <span class="product-price">$180.00</span>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="col-sm-4">
                                             <a href="#"><button type="submit" class="btn btn-primary view-more">Add To Cart</button></a>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </li>
                              <li class="checkout-product">
                                 <div class="row align-items-center">
                                    <div class="col-sm-3 col-lg-2">
                                       <div class="row align-items-center">
                                          <div class="col-sm-3">
                                             <a href="javascript:void();" class="badge badge-danger"><i class="ri-close-fill"></i></a>
                                          </div>
                                          <div class="col-sm-9">
                                             <span class="checkout-product-img">
                                             <a href="javascript:void();"><img class="img-fluid rounded" src="images/checkout/02.jpg" alt=""></a>
                                             </span>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="col-sm-3 col-lg-4">
                                       <div class="checkout-product-details">
                                          <h5>Harsh Reality book</h5>
                                          <p class="text-success">In stock</p>
                                          <div class="price">
                                             <h5>$250.00</h5>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="col-sm-6 col-lg-6">
                                       <div class="row">
                                          <div class="col-sm-8">
                                             <div class="row align-items-center mt-2">
                                                <div class="col-sm-7 col-lg-6">
                                                   <button type="button" class="fa fa-minus qty-btn" id="btn-minus"></button>
                                                   <input type="text" id="quantity" value="0">
                                                   <button type="button" class="fa fa-plus qty-btn" id="btn-plus"></button>
                                                </div>
                                                <div class="col-sm-5 col-lg-6">
                                                   <span class="product-price">$250.00</span>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="col-sm-4">
                                             <a href="#"><button type="submit" class="btn btn-primary view-more">Add To Cart</button></a>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </li>
                              <li class="checkout-product">
                                 <div class="row align-items-center">
                                    <div class="col-sm-3 col-lg-2">
                                       <div class="row align-items-center">
                                          <div class="col-sm-3">
                                             <a href="javascript:void();" class="badge badge-danger"><i class="ri-close-fill"></i></a>
                                          </div>
                                          <div class="col-sm-9">
                                             <span class="checkout-product-img">
                                             <a href="javascript:void();"><img class="img-fluid rounded" src="images/checkout/03.jpg" alt=""></a>
                                             </span>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="col-sm-3 col-lg-4">
                                       <div class="checkout-product-details">
                                          <h5>The House in the Fog</h5>
                                          <p class="text-success">In stock</p>
                                          <div class="price">
                                             <h5>$399.00</h5>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="col-sm-6 col-lg-6">
                                       <div class="row">
                                          <div class="col-sm-8">
                                             <div class="row align-items-center mt-2">
                                                <div class="col-sm-7 col-lg-6">
                                                   <button type="button" class="fa fa-minus qty-btn" id="btn-minus"></button>
                                                   <input type="text" id="quantity" value="0">
                                                   <button type="button" class="fa fa-plus qty-btn" id="btn-plus"></button>
                                                </div>
                                                <div class="col-sm-5 col-lg-6">
                                                   <span class="product-price">$399.00</span>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="col-sm-4">
                                             <a href="#"><button type="submit" class="btn btn-primary view-more">Add To Cart</button></a>
                                          </div>
                                       </div>
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
                     <li class="list-inline-item"><a href="privacy-policy.html">Privacy Policy</a></li>
                     <li class="list-inline-item"><a href="terms-of-service.html">Terms of Use</a></li>
                  </ul>
               </div>
               <div class="col-lg-6 text-right">
                  Copyright 2020 <a href="#">Booksto</a> All Rights Reserved.
               </div>
            </div>
         </div>
      </footer>
      <!-- Footer END -->
<%@include file="includes/footer.jsp" %>
</body>
</html>