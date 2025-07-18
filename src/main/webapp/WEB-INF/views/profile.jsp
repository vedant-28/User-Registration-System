<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
    <head>
        <%@ include file="./base.jsp" %>
        <title>User Profile</title>
    </head>
    <body>
        <%@ include file="./navbar-home.jsp" %>
        <div class="container mt-5">
            <h2>Welcome, ${ user.username }!</h2>
            <h3>User ID: ${ user.id }</h3>
            <h3>City: ${ user.city }</h3>
            <div class="container text-center">
                <a href="${ pageContext.request.contextPath }/" class="btn btn-warning mx-2">Logout</a>
            </div>
        </div>
    </body>
</html>