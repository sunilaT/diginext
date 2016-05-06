<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html lang="en">
<head>
  <title>Music Hub</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <!--  
  <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />" >
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
 
 -->
 
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />" >
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  	<script src="<c:url value="/resources/js/bootstrap.min.js" />" ></script>
 
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
    
      width: 70%;
      margin: auto;
      height: 350px;
  		}
  		.container{
  			height: 350px;
  		}
  		.footer{
  			width:100%;
  			bottom: 0px;
  			left:0px;
  			text-align: center;
  		
  }
  </style>
</head>
<body>
<div class="menubar">
  <h3></h3>
  <ul class="nav nav-tabs">
    <li><a href="./">Home</a></li>
    <li><a href="login">Login</a></li>
    <li><a href="signup">SignUp</a></li>
    <li><a href="product">All Categories</a></li>
    <li><a href="aboutus">About us</a></li>
  </ul>
</div>


<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="<c:url value="/resources/images/guitar.jpg"/>" alt="guitar" width="400" height="345">
      </div>

      <div class="item">
       <img src="<c:url value="/resources/images/tabla.jpg"/>" alt="tabla" width="400" height="345">
      </div>
    
      <div class="item">
       <img src="<c:url value="/resources/images/violin.jpg"/>" alt="violin" width="400" height="345">
      </div>

      <div class="item">
        <img src="<c:url value="/resources/images/trumpet.jpg"/>" alt="trumpet" width="400" height="345">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<div class="item active">
      <a href="trumpet?nam=trumpet">  <img src="<c:url value="resources/images/trumpet.jpg"/>" alt="trumpet" width="200" height="200"></a>
     
     
      <a href="violin?nam=violin">  <img src="<c:url value="resources/images/violin.jpg"/>" alt="violin" width="200" height="200"></a>
     
     
       <a href="tabla?nam=tabla"> <img src="<c:url value="resources/images/tabla.jpg"/>" alt="tabla" width="200" height="200"></a>
     
     
      <a href="guitar?nam=guitar"> <img src="<c:url value="resources/images/guitar.jpg"/>" alt="guitar" width="200" height="200"></a>
     </div>
      


</body>
</html>
