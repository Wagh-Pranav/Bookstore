 <%@page import="bookstore.connection.DbCon"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 
<%@page import="bookstore.connection.DbCon"%>
<%@page import="bookstore.model.*"%>

<%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
	response.sendRedirect("index.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BookStore Login</title>
<%@include file="includes/header.jsp" %>
</head>
<body>
 <!-- loader Start -->
      <div id="loading">
         <div id="loading-center">
         </div>
      </div>
      
      <form action="user-login" method="post">
      <!-- loader END -->
        <!-- Sign in Start -->
        <section class="sign-in-page">
            <div class="container p-0">
                <div class="row no-gutters height-self-center">
                  <div class="col-sm-12 align-self-center page-content rounded">
                    <div class="row m-0">
                      <div class="col-sm-12 sign-in-page-data">
                          <div class="sign-in-from bg-primary rounded">
                        
                              <h3 class="mb-0 text-center text-white">Sign in</h3>
                              <p class="text-center text-white">Enter your email address and password to access admin panel.</p>
                              <form class="mt-4 form-text">
                                  <div class="form-group">
                                      <label for="exampleInputEmail1">Email address</label>
                                      <input type="email" class="form-control mb-0" id="exampleInputEmail1" name="login-email" placeholder="Enter email">
                                  </div>
                                  <div class="form-group">
                                      <label for="exampleInputPassword1">Password</label>
                                      <a href="#" class="float-right text-dark">Forgot password?</a>
                                      <input type="password" class="form-control mb-0" id="exampleInputPassword1" name="login-password" placeholder="Password">
                                  </div>
                                  <div class="d-inline-block w-100">
                                      <div class="custom-control custom-checkbox d-inline-block mt-2 pt-1">
                                          <input type="checkbox" class="custom-control-input" id="customCheck1">
                                          <label class="custom-control-label" for="customCheck1">Remember Me</label>
                                      </div>
                                  </div>
                                  <div class="sign-info text-center">
                                      <button type="submit" class="btn btn-white d-block w-100 mb-2">Sign in</button>
                                      <span class="text-dark dark-color d-inline-block line-height-2">Don't have an account? <a href="sign-up.html" class="text-white">Sign up</a></span>
                                  </div>
                              </form>
                          </div>
                      </div>
                    </div>
                  </div>
                </div>
            </div>
        </section>
        <!-- Sign in END -->
        </form>
<%out.print(DbCon.getConnection()); %>>      
<%@include file="includes/footer.jsp" %>
</body>
</html>