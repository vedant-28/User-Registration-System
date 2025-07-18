<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="./base.jsp" %>
        <title>User Registration Home</title>
    </head>
<body>
    <%@ include file="./navbar.jsp" %>
    <div class="container mt-4">
        <h1 class="text-center mb-3">Welcome To User Registration System</h1>
        <h4 class="text-center m-3">---Registerd users---</h4>
    	<div class="row">
    		<div class="row row-cols-3">
    			<table class="table table-striped">
      				<thead class="text-center">
        				<tr>
          					<th scope="col">USER ID</th>
          					<th scope="col">USER NAME</th>
          					<th scope="col">CITY</th>
        				</tr>
      				</thead>
      				<tbody>
        				<c:forEach items="${ userList }" var="u">
        					<tr>
        						<th scope="row">${ u.id }</th>
        							<td>${ u.name }</td>
        							<td>${ u.city }</td>
        							<td class="py-2">
          						</td>
        					</tr>
        				</c:forEach>
      				</tbody>
    			</table>
    		</div>
    	</div>
    </div>
</body>
</html>
