<%@page import="com.capstone.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">

<meta charset="ISO-8859-1">
<title>Cook Ried Insurance Agency</title>
<style>
a,
a:focus,
a:hover {
  color: #fff;
}

/* Custom default button */
.btn-default,
.btn-default:hover,
.btn-default:focus {
  color: #333;
  text-shadow: none; /* Prevent inheritence from `body` */
  background-color: #fff;
  border: 1px solid #fff;
}


/*
 * Base structure
 */

html,
body {
  height: 100%;
  background-color: #fff;
}
body {
  color: #fff;
  text-align: center;
  text-shadow: 0 1px 3px rgba(0,0,0,.5);
}

/* Extra markup and styles for table-esque vertical and horizontal centering */
.site-wrapper {
  display: table;
  width: 100%;
  height: 100vh;
  background-color: #333;
  /*height: 100%; */
  /*min-height: 100%;*/
}
.site-wrapper-inner {
  display: table-cell;
  vertical-align: top;
}
.cover-container {
  margin-right: auto;
  margin-left: auto;
}

/* Padding for spacing */
.inner {
  padding: 30px;
}


/*
 * Header
 */
.masthead-brand {
  margin-top: 10px;
  margin-bottom: 10px;
}

.masthead-nav > li {
  display: inline-block;
}
.masthead-nav > li + li {
  margin-left: 20px;
}
.masthead-nav > li > a {
  padding-right: 0;
  padding-left: 0;
  font-size: 16px;
  font-weight: bold;
  color: #fff; /* IE8 proofing */
  color: rgba(255,255,255,.75);
  border-bottom: 2px solid transparent;
}
.masthead-nav > li > a:hover,
.masthead-nav > li > a:focus {
  background-color: transparent;
   border-bottom-color: red;
  border-bottom-color: red;
}
.masthead-nav > .active > a,
.masthead-nav > .active > a:hover,
.masthead-nav > .active > a:focus {
  color: #fff;
  border-bottom-color: red;
}

@media (min-width: 768px) {
  .masthead-brand {
    float: left;
  }
  .masthead-nav {
    float: right;
  }
}
b{
color:red;
}


/*
 * Cover
 */

.cover {
  padding: 0 20px;
}
.cover .btn-lg {
  padding: 10px 20px;
  font-weight: bold;
}

/*
 * Affix and center
 */

@media (min-width: 768px) {
  /* Pull out the header and footer */
  .masthead {
    position: fixed;
    top: 0;
  }
  /* Start the vertical centering */
  .site-wrapper-inner {
    vertical-align: middle;
  }

}
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
  border-bottom: 1px solid #333;
  background-color: #333;
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
<body>

    <div class="site-wrapper">

      <div class="site-wrapper-inner">

        <div class="container">

          <div class="masthead clearfix">
            <div class="container inner">
              <h3 class="masthead-brand">Cook Reid Insurance Agency</h3>
              
              <nav>
                <ul class="nav masthead-nav">
                  <li><a href="agentpolicyholderlist">Policy Holders</a></li>
                  <li><a href="agentnewpolicyholder">Add Policy Holder</a></li>
                  <li><a href="agentpolicylist">Policies</a></li>

                </ul>
              </nav>
            </div>
          </div>

          <div class="inner cover">
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
            <h2 class="media-heading" style="color:white;">Welcome ${agent.firstName }
            </h2>
            <p class="lead" style="color:white;">Email Address: ${agent.emailAddress }</p>
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

    </div>
</body>
</html>