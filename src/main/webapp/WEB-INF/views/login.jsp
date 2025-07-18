<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="./base.jsp" %>
        <title>Login form</title>
    </head>
    <body>
        <%@ include file="./navbar-home.jsp" %>
        <div class="container mt-5">
            <h1 class="text-center mb-5">Login For Registered Users</h1>
            <form:form modelAttribute="userLoginDetails"
                  method="post"
                  action="login">
                <div class="container row mb-3">
                    <label for="username" class="col-sm-2 col-form-label">Username</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="username" name="username">
                    </div>
                </div>
                <div class="container row mb-3">
                    <label for="passwordHash" class="col-sm-2 col-form-label">Password</label>
                    <div class="col-sm-10">
                       <input type="password" class="form-control" id="passwordHash" name="passwordHash">
                    </div>
                </div>
                <div class="container text-center">
                    <button type="submit" class="btn btn-primary mx-2">Log In</button>
                </div>
            </form:form>
            <c:if test="${ not empty error }">
                <p style="color:red">${ error }</p>
            </c:if>
        </div>
    </body>
</html>