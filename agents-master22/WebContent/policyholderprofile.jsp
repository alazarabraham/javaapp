<%@page import="com.capstone.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Cook Ried Insurance Agency</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	
	<style>
	.masthead {
  height: 100vh;
  min-height: 100vh;
  background-image: url('https://iili.io/d60Jta.jpg');
  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
}
h1{
text-align: center;}
.header-container{
    margin-top:20px;    
}
.text-white {
    color: #fff !important;
}
.ui-bg-overlay-container, .ui-bg-video-container {
    position: relative;
}
.ui-bg-cover {
    background-color: transparent;
    background-position: center center;
    background-size: cover;
}
.ui-bg-overlay-container .ui-bg-overlay {
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    display: block;
}

.bg-dark {
    background-color: rgba(24,28,33,0.9) !important;
}
.opacity-50 {
    opacity: .5 !important;
}
.bg-dark {
    background-color: rgba(24,28,33,0.9) !important;
}
.ui-bg-overlay-container>*, .ui-bg-video-container>* {
    position: relative;
}
@media (min-width: 992px){
    .container, .container-fluid {
        padding-right: 2rem;
        padding-left: 2rem;
    }
}
.media, .media>:not(.media-body), .jumbotron, .card {
    -ms-flex-negative: 1;
    flex-shrink: 1;
}
.d-flex, .d-inline-flex, .media, .media>:not(.media-body), .jumbotron, .card {
    -ms-flex-negative: 1;
    flex-shrink: 1;
}
.ui-w-100 {
    width: 100px !important;
    height: auto;
}
.font-weight-bold {
    font-weight: 700 !important;
}
.opacity-75 {
    opacity: .75 !important;
}
.tabs-alt.nav-tabs .nav-link.active, .tabs-alt.nav-tabs .nav-link.active:hover, .tabs-alt.nav-tabs .nav-link.active:focus, .tabs-alt>.nav-tabs .nav-link.active, .tabs-alt>.nav-tabs .nav-link.active:hover, .tabs-alt>.nav-tabs .nav-link.active:focus {
    -webkit-box-shadow: 0 -2px 0 #26B4FF inset;
    box-shadow: 0 -2px 0 #26B4FF inset;
}

.nav-tabs:not(.nav-fill):not(.nav-justified) .nav-link, .nav-pills:not(.nav-fill):not(.nav-justified) .nav-link {
    margin-right: .125rem;
}
.nav-tabs.tabs-alt .nav-link, .tabs-alt>.nav-tabs .nav-link {
    border-width: 0 !important;
    border-radius: 0 !important;
    background-color: transparent !important;
}
.nav-tabs .nav-link.active {
    border-bottom-color: #fff;
}
                                  
	</style>



</head>
<body data-spy="scroll" data-target="#pb-navbar" data-offset="200">
<nav class="navbar navbar-expand-lg navbar-light bg-light shadow fixed-top">
  <div class="container">
    <a class="navbar-brand" href="loggedinpage.jsp">Cook Ried Insurance Agency</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
     <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link" href="listagent">Agents</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="newagent">Add Agent</a>
        </li>
       <li class="nav-item">
          <a class="nav-link" href="policyholderlist">Policy Holders</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="newpolicyholder">Add Policy Holder</a>
        </li>
        </li>
       <li class="nav-item">
          <a class="nav-link" href="policylist">Policies</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="newpolicy">Add Policies</a>
        </li>
       
      </ul>
    </div>
  </div>
</nav>

<!-- Full Page Image Header with Vertically Centered Content -->
<header class="masthead">
  <div class="container h-100">
    <div class="row h-100 align-items-center">
      
      <div class="col-12 text-center">
        
<c:if test="${policy_holder != null}">
            <form action="/Capstoneproject2/agentupdatepolicyholder" method="post">
        </c:if>
        <c:if test="${policy_holder == null}">
            <form action="/Capstoneproject2/agentinsertpolicyholder" method="post">
        </c:if>
        <table class="table table-bordered" border="1" cellpadding="5">
        
            <caption>
                <h2>
                    <c:if test="${policy_holder != null}">
                    </c:if>
                    <c:if test="${policy_holder == null}">
                        
                    </c:if>
                </h2>
            </caption>
                <c:if test="${policy_holder != null}">
                    <input type="hidden" name="PH_key" value="<c:out value='${policy_holder.PH_key}' />" />
                </c:if> 
                  <div class="container bootstrap-snippet header-container">
    <div class="bg">
      <div class="container py-5">
        <div class="media col-md-10 col-lg-8 col-xl-7 p-0 my-4 mx-auto">
          <img src="https://i.pinimg.com/originals/17/56/8f/17568fcd478e0699067ca7b9a34c702f.png" alt class="d-block ui-w-100 rounded-circle">
          <div class="media-body ml-5">
            <p class=" mb-4"><strong>Welcome, ${policy_holder.firstName}     ${policy_holder.lastName} !</strong></p>
            
            <div class="text-muted mb-4">
					Thank you for your loyalty and we pledge our loyalty to you! It is an honor to serve you!           
			 </div>
			 <div>
			 
            </div>
            <div>
			  <a href="#" class="d-inline-block text-dark">
              <strong>Email: </strong>
              <span class="text-muted">${policy_holder.emailAddress}</span>
            </a>
            
			 </div>
			
          </div>
        </div>
      </div>
      <hr class="m-0">
      <ul class="nav nav-tabs tabs-alt justify-content-center">
        <li class="nav-item">
          <a class="nav-link py-4 active" href="policylist">Policies</a>
        </li>
        <li class="nav-item">
          <a class="nav-link py-4" href="#">Likes</a>
        </li>
        <li class="nav-item">
          <a class="nav-link py-4" href="#">Followers</a>
        </li>
        <li class="nav-item">
          <a class="nav-link py-4" href="#">Following</a>
        </li>
      </ul>
    </div>
</div>        
         </div>
    </div>
  </div>
</header>

<!-- Page Content -->

    </body>
    </html>
