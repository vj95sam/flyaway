<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin - Setup Airlines</title>
</head>
<body>
<jsp:include page="/WEB-INF/view/components/admin-header.jsp" ></jsp:include>
<jsp:include page="/WEB-INF/view/components/admin-topbar.jsp" ></jsp:include>

Total Airlines: ${list.size()} &nbsp;&nbsp; <a href="admineditairline?id=0">Add Airline</a><br>
<table border=1 cellspacing=2 cellpadding=4>
 	<tr>
 		<td><b>Airline</b></td>
 		<td></td>
 	</tr>
 	  <c:forEach items="${list}" var="item">
 	  	<tr>
 	  		<td>${item.name }</td>
 	  		<td>
 	  			<a href="admineditairline?id=${item.ID}">Edit</a> | <a href="admindeleteairline?id=${item.ID}">Delete</a>
 	  		</td>
 	  	</tr>
 	  </c:forEach>
</table> 	

<jsp:include page="/WEB-INF/view/components/admin-footer.jsp"></jsp:include>
</body>
</html>