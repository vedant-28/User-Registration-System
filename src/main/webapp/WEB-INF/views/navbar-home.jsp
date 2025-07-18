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
                <a href="${ pageContext.request.contextPath }/" class="btn btn-success mx-2">Home</a>
           </div>
        </form>
      </div>
    </nav>
</body>
</html>