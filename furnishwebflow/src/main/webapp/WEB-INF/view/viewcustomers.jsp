
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />" >
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="<c:url value="/resources/js/bootstrap.min.js" />" ></script>
  
   <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/mystyle.css"/>">
  
    <title>Furniture Stop!</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/simple-sidebar.css" rel="stylesheet">
</head>

<body>
<div id="header">
<center><h3>Welcome to Furniture Stop!</h3></center>
</div>

<div>
	<!-- Sidebar -->
	<div id="nav">  
	<nav class="navbar navbar-default">      
        <div class="container-fluid">
            <ul class="nav navbar-nav">
                <li class="active">
  	<li><a href="./">Home</a></li><br/>
    
    
    <li><a href="product">All Categories</a></li><br/>
    <li><a href="aboutus">About us</a></li></br>
                
                </li>                
            </ul>
        </div>
       </nav>        
 	</div>       

<!-- Wrapper for slides -->
<div id="section">
<h2><p style="float:left;">List Of Users!</p></h2>
    	<img src="<c:url value="/resources/images/furnish.jpg" />" width="300" height="150" alt="img1"  style="float:right;"/> 
 
  	<p style="text-align: justify;">
  		<div ng-app="myApp" ng-controller="namesCtrl">
	<!-- <form>
		<input type="text" ng-model="search">&nbsp&nbsp
		<span class="glyphicon glyphicon-search"></span>
	</form> -->
	<table class="table table-striped">
	<tr>
		<th>ID</th>
		<th>NAME</th>
		<th>PASSWORD</th>
		<th>PHNO</th>
		<th>EMAILID</th>
		<th>ENABLED</th>
		
		
		
	</tr>
	
		<c:forEach items="${data}" var="product">  
   <tr>  
    <td><c:out value="${product.userid}"/></td>  
    <td><c:out value="${product.name}"/></td>  
    <td><c:out value="${product.pwd}"/></td>  
    <td><c:out value="${product.phno}"/></td>   
    <td><c:out value="${product.emailid}"/></td>
    <td><c:out value="${product.enabled}"/></td>
     <td align="center"></a> <a href="deletec/${product.userid}">Delete</a></td>  
   </tr>  
  </c:forEach>
	
	</table>
   
	<script>
	angular.module('myApp', []).controller('namesCtrl', function($scope) {
    $scope.names = ${data}/*[
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
</div>

<div id="footer">
Copyright © Furniture.com
</div>        
</body>
</html>        
  




