<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html ng-app="myApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product </title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />" >
 <script src="<c:url value="/resources/js/bootstrap.min.js" />" ></script>
  	<script src="<c:url value="/resources/angular-1.5.5/angular.min.js" />" ></script> 	
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script>document.write('<base href="' + document.location + '" />');</script>
  
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
    
      width: 70%;
      margin: auto;
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
  	<div class="jumbotron">
         
    <h2><p style="float:left;">List Of <%=request.getParameter("nam")%> Products!</p></h2>
    	<img src="<c:url value="/resources/images/music1.jpg" />" width="150" height="150" alt="img1"  style="float:right;"/> 
  	</div>
  	<p style="text-align: justify;">
  		<div ng-app="myApp" ng-controller="namesCtrl">
	
	<table class="table table-striped">
	<tr>
		<th>NO</th>
		<th>NAME</th>
		<th>PRICE</th>
		<th>ID</th>
		<th>INFORMATION</th>
	</tr>
	<tr ng-repeat="resource in names ">
		<td>{{ resource.no }}</td>
		<td>{{ resource.name}}</td>
		<td>{{ resource.price}}</td>
		<td>{{ resource.id }}</td>
		<td>{{ i }}</td>
	</tr>
	</table>
	<script>
	angular.module('myApp', []).controller('namesCtrl', function($scope) {
    $scope.names = [
        {no:'1',name:'tabla 120',id:'1052',price:'$127'},
        {no:'2',name:'tabla 89',id:'126',price:'$170'},
                
        ];
    	$scope.orderByMe = function(x) {
        $scope.myOrderBy = x;
    }
	});
	</script>
	</div>
  	</p>  
	</div>
 
</body>
</html>