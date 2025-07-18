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
        <a href="home" class="navbar-brand text-light">User Registration Home</a>
        <form class="d-flex" role="search">
          <button class="btn btn-success mx-2" type="submit">Register</button>
          <button class="btn btn-primary mx-2" type="submit">Log in</button>
        </form>
      </div>
    </nav>

</body>
</html>
