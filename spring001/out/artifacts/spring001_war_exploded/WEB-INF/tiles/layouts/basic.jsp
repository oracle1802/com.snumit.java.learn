<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="t" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title><tiles:getAsString name="title"/></title>
  <link rel="shortcut icon" href="/img/global/appicon.png">

  <!-- Bootstrap -->
  <link href="/framework/bs4/css/bootstrap.min.css" rel="stylesheet">

  <!--global css -->
  <link href="/css/style.css" rel="stylesheet">

  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  <sec:csrfMetaTags />
</head>

<body>

<%--to top of page button--%>
<button onclick="topFunction()" id="toTopOfPageButton" title="Go to top"><span class="glyphicon glyphicon-chevron-up"></span></button>

<!--important message-->
<div class="row">
  <div id="topmessage" class="col-xs-12  col-sd-12  col-md-12 col-ld-12" style="background-color:#46b8da"></div>
</div>

<!--head menu-->
<nav class="navbar navbar-toggleable-md navbar-light bg-faded">

  <!-- Brand and toggle get grouped for better mobile display -->
  <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarToggler" aria-controls="navbarToggler" aria-expanded="false" aria-label="Toggle navigator">
    <span class="navbar-toggler-icon"></span>
  </button>

  <a class="navbar-brand" href="/">
    <img alt="SNUMIT" src="/img/global/SNUMIT_000.png" width="93px" style="margin-bottom: 5px">
  </a>



  <!-- Collect the nav links, forms, and other content for toggling -->
  <div class="collapse navbar-collapse" id="navbarToggler">
    <ul class="navbar-nav mr-auto mt-2 mt-md-0">
      <!--
                          <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
                          <li><a href="#">Link</a></li>
            -->
      <!--
                          <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                              <li><a href="#">Action</a></li>
                              <li><a href="#">Another action</a></li>
                              <li><a href="#">Something else here</a></li>
                              <li role="separator" class="divider"></li>
                              <li><a href="#">Separated link</a></li>
                              <li role="separator" class="divider"></li>
                              <li><a href="#">One more separated link</a></li>
                            </ul>
                          </li>
            -->
    </ul>

    <ul class="navbar-nav navbar-right">
      <li>
        <form class="form-inline">
          <label class="sr-only  form-control-sm" for="inlineFormInputGroup">Search</label>
          <div class="input-group mr-sm-2">
            <input type="text" class="form-control form-control-sm" id="inlineFormInputGroup" placeholder="Search">
            <button type="submit" class="btn btn-primary input-group-addon  form-control-sm">Go!</button>
          </div>

        </form>
      </li>

      <sec:authentication var="principal" property="principal" />

      <sec:authorize access="isAnonymous()">
        <li>
          <a href="/login">
            <button type="button" class="btn btn-primary btn-sm mb-sm-1">Login</button>
          </a>
        </li>
      </sec:authorize>

      <sec:authorize access="hasRole('ROLE_USER') and isAuthenticated()">
        <div class="dropdown ">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="text-decoration:none;">
            <img src="/img/global/user_unk001.gif" width="26" class="img-circle ">
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton">
            <a class="dropdown-item" href="#">Profile of <strong>${principal.username} </strong></a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="/logout">Logout</a>
          </div>
        </div>
      </sec:authorize>
    </ul>
  </div><!-- /.navbar-collapse -->

</nav>
    <!--
          <ol class="breadcrumb">
            <li><a href="#">Home</a></li>
            <li><a href="#">Library</a></li>
            <li class="active">Data</li>
          </ol>
    -->


<!--<div class="col-xs-12  col-sd-12  col-md-12 col-ld-12" style="background-color:#46b8da">important words</div>-->

<div class="row" class="container-fluid">
  <!--left text panel-->
  <div class="col-2  col-sm-2  col-md-1 col-lg-2 col-xl-2" ></div>
  <!--content-->
  <div class="col-8 col-sm-8 col-md-10 col-lg-8 col-xl-8">
    <tiles:insertAttribute name="body" />
  </div>
  <!--right text panel-->
  <div class="col-2  col-sm-2  col-md-1 col-lg-2 col-xl-2" ></div>
</div>

<br><br><br> <br><br><br> <br><br><br>
<div class="footer">
  <div class="text-right" style="margin-right: 15px">
    <h6><a href="mailto:#">support@snumit.com</a></h6>
    <h6>© 2017 Snumit</h6>
  </div>
</div>

<!-- tether -->
<script src="/framework/tether-1.3.3/dist/js/tether.min.js"></script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="/framework/bs4/js/bootstrap.min.js"></script>
<!-- snumit.js -->
<script src="/js/snumit.js"></script>

<script>
    // When the user scrolls down 20px from the top of the document, show the button
    window.onscroll = function() {scrollFunction()};

    function scrollFunction() {
        if (document.body.scrollTop > 200 || document.documentElement.scrollTop > 200) {
            document.getElementById("toTopOfPageButton").style.display = "block";
        } else {
            document.getElementById("toTopOfPageButton").style.display = "none";
        }
    }

    // When the user clicks on the button, scroll to the top of the document
    function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
    }
</script>
</body>
</html>