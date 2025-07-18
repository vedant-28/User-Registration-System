<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="./base.jsp" %>
        <title>Registration form</title>
    </head>
    <body>
        <%@ include file="./navbar-home.jsp" %>
        <div class="container mt-5">
            <h1 class="text-center mb-5">Register New User</h1>
            <form>
                <div class="container row mb-3">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Username</label>
                    <div class="col-sm-10">
                        <input type="email" class="form-control" id="username">
                    </div>
                </div>
                <div class="container row mb-3">
                    <label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
                    <div class="col-sm-10">
                       <input type="password" class="form-control" id="passwordHash">
                    </div>
                </div>
                <div class="container text-center">
                    <a href="register" type="submit" class="btn btn-primary mx-2">Log In</a>
                </div>
            </form>
        </div>
    </body>
</html>