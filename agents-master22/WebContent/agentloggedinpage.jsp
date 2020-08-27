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
.fs35 {
    font-size: 35px !important;
}

.mw50 {
    max-width: 50px !important;
}
.mn {
    margin: 0 !important;
}
.mw140 {
    max-width: 140px !important;
}
.mb20 {
    margin-bottom: 20px !important;
}
.mr25 {
    margin-right: 25px !important;
}

.mw40 {
    max-width: 40px !important;
}

.p30 {
    padding: 30px !important;
}

.page-heading {
  position: relative;
  padding: 30px 40px;
  margin: -25px -20px 25px;
}
.page-tabs {
  margin: -25px -20px 30px;
  padding: 15px 25px 0;
  border-bottom: 1px solid #ddd;
  background: #e9e9e9;
}
.page-tabs .nav-tabs {
  border-bottom: 0;
}
.page-tabs .nav-tabs > li > a {
  color: #AAA;
  padding: 10px 20px;
}
.page-tabs .nav-tabs > li:hover > a,
.page-tabs .nav-tabs > li:focus > a {
  border-color: #ddd;
}
.page-tabs .nav-tabs > li.active > a,
.page-tabs .nav-tabs > li.active > a:hover,
.page-tabs .nav-tabs > li.active > a:focus {
  color: #666;
  font-weight: 600;
  background-color: #eee;
  border-bottom-color: transparent;
}
@media (max-width: 800px) {
  .page-tabs {
    padding: 25px 20px 0;
  }
  .page-tabs .nav-tabs li {
    float: none;
    margin-bottom: 5px;
  }
  .page-tabs .nav-tabs li:last-child,
  .page-tabs .nav-tabs li.active:last-child {
    margin-bottom: 10px;
  }
  .page-tabs .nav-tabs > li > a:hover,
  .page-tabs .nav-tabs > li > a:focus {
    border: 1px solid #DDD;
  }
  .page-tabs .nav-tabs > li.active > a,
  .page-tabs .nav-tabs > li.active > a:hover,
  .page-tabs .nav-tabs > li.active > a:focus {
    border-bottom-color: #ddd;
  }
}
	</style>



</head>
<body data-spy="scroll" data-target="#pb-navbar" data-offset="200">
<nav class="navbar navbar-expand-lg navbar-light bg-light shadow fixed-top">
  <div class="container">
    <a class="navbar-brand" href="#">Cook Ried Insurance Agency</a>
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
<section id="content" class="container">
    <!-- Begin .page-heading -->
    <div class="page-heading">
        <div class="media clearfix">
          <div class="media-left pr30">
            <a href="#">
              <img class="media-object mw150" src="https://bootdey.com/img/Content/avatar/avatar2.png" alt="...">
            </a>
          </div>                      
          <div class="media-body va-m">
            <h2 class="media-heading" style="color:black;">Welcome ${agent.firstName }
            </h2>
            <p class="lead" style="color:black;">Email Address: ${agent.emailAddress }</p>
            <div class="media-links">
              <ul class="list-inline list-unstyled">
                <li>
                  <a href="#" title="facebook link">
                    <span class="fa fa-facebook-square fs35 text-primary"></span>
                  </a>
                </li>
                <li>
                  <a href="#" title="twitter link">
                    <span class="fa fa-twitter-square fs35 text-info"></span>
                  </a>
                </li>
                <li>
                  <a href="#" title="google plus link">
                    <span class="fa fa-google-plus-square fs35 text-danger"></span>
                  </a>
                </li>
                <li class="hidden">
                  <a href="#" title="behance link">
                    <span class="fa fa-behance-square fs35 text-primary"></span>
                  </a>
                </li>
                <li class="hidden">
                  <a href="#" title="pinterest link">
                    <span class="fa fa-pinterest-square fs35 text-danger-light"></span>
                  </a>
                </li>
                <li class="hidden">
                  <a href="#" title="linkedin link">
                    <span class="fa fa-linkedin-square fs35 text-info"></span>
                  </a>
                </li>
                <li class="hidden">
                  <a href="#" title="github link">
                    <span class="fa fa-github-square fs35 text-dark"></span>
                  </a>
                </li>
                <li class="">
                  <a href="#" title="phone link">
                    <span class="fa fa-phone-square fs35 text-system"></span>
                  </a>
                </li>
                <li>
                  <a href="#" title="email link">
                    <span class="fa fa-envelope-square fs35 text-muted"></span>
                  </a>
                </li>
                <li class="hidden">
                  <a href="#" title="external link">
                    <span class="fa fa-external-link-square fs35 text-muted"></span>
                  </a>
                </li>
              </ul>
              <form action="${pageContext.request.contextPath}/agentlogout">
    			<input class="btn btn-danger" type="submit" value="Log out" />
			</form>
            </div>
          </div>
        </div>
    </div>
    </section>
</div>
    </div>
  </div>
</header>

<!-- Page Content -->

    </body>
    </html>



