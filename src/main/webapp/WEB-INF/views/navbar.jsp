<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="./base.jsp" %>
        <title>User Registration Home</title>
    </head>
<body>
    <nav class="navbar bg-dark border-bottom border-body" data-bs-theme="dark">
      <div class="container-fluid">
        <a class="navbar-brand text-light">User Registration Home</a>
        <form class="d-flex" role="search">
           <div class="container text-center">
                <a href="register" class="btn btn-success mx-2">Register</a>
                <a href="login" class="btn btn-primary mx-2">Login</a>
           </div>
        </form>
      </div>
    </nav>
</body>
</html>