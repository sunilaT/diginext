<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

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
	<form>
		<input type="text" ng-model="search">&nbsp&nbsp
		<span class="glyphicon glyphicon-search"></span>
	</form>
	<table class="table table-striped">
	<tr>
		<th>NO</th>
		<th>NAME</th>
		<th>PRICE</th>
		<th>ID</th>
		<th>INFORMATION</th>
	</tr>
	
	<tr ng-repeat="resource in names | filter:search">
		<td>{{ resource.num }}</td>
		<td>{{ resource.pname}}</td>
		<td>{{ resource.pcost}}</td>
		<td>{{ resource.pid }}</td>
		<td><a href="productdetails"> info </a></td>
	</tr>
	</table>
    
	<script>
	angular.module('myApp', []).controller('namesCtrl', function($scope) {
    $scope.names = ${data};/*Expression language[
        {no:'1',name:'violin 120',id:'1052',price:'$127'},
        {no:'2',name:'violin 89',id:'126',price:'$170'},
        {no:'3',name:'violin speed way',id:'123',price:'$150'},
        {no:'4',name:'violin soft',id:'182',price:'$190'},
        {no:'5',name:'tabla 12',id:'29',price:'$520'},
        {no:'6',name:'tabla 100',id:'11',price:'$170'},
        {no:'7',name:'tabla 200',id:'12',price:'$130'},
        {no:'8',name:'tabla taj',id:'13',price:'$190'},
        {no:'9',name:'tabla 1000',id:'14',price:'$140'},
        {no:'10',name:'tabla 800',id:'10',price:'$140'},
        {no:'11',name:'Guitar 12',id:'1201',price:'$120'},
        {no:'12',name:'Guitar yoyo',id:'1022',price:'$170'},
        {no:'13',name:'Guitar rx 100',id:'1032',price:'$160'},
        {no:'14',name:'Guitar',id:'1044',price:'$220'},
        
        ];*/
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