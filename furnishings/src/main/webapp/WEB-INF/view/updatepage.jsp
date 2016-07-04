<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
   <%@page import="com.musichub.model.Product"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
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
<center><h3>Welcome to the Administrator!</h3></center>
</div>
  
  </head>
<body>
	<div id="nav">  
	<nav class="navbar navbar-default">      
        <div class="container-fluid">
            <ul class="nav navbar-nav">
                <li class="active">
                <li><a href="adminhome">Home</a></li><br/>
				<li><a href="manageproduct">Manage Products</a></li><br/>
                <li><a href="manageuser">Manage Users</a></li><br/>
				<li><a href="logout">Logout</a></li><br/>                
</li>                
            </ul>
        </div>
       </nav>        
 	</div>       

<div id=section>

<% Object obj=(Object)session.getAttribute("data1");
Product p=(Product)obj;
%>
<center><form:form method="POST" action="/furnish/updateprod" >
   <table class="table table-bordered">
    
    <tr>
        <td><form:label path="pid">Product Id :</form:label></td>
        <td><form:input path="pid" value="<%=p.getPid()%>" readonly="true"/></td>
        
    </tr>
    <tr>
        <td><form:label path="pname">Product Name :</form:label></td>
        <td><form:input path="pname" value="<%=p.getPname() %>" /></td>
        
    </tr>
    <tr>
        <td><form:label path="pcost">Product Cost :</form:label></td>
        <td><form:input path="pcost" value="<%=p.getPcost() %>"/></td>
    </tr>
    <tr>
        <td colspan="2">
            <input type="submit" value="Update"/>
            <input type="Reset" value="Cancel"/>
                  </td>
    </tr>
</table>  
</form:form></center>

</div>
<div id="footer">
Copyright © Furniture.com
</div>        




</body>
</html>