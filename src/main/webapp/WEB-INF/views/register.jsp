<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
            <form:form modelAttribute="userDetails"
                  method="post"
                  action="register"
                  class="row g-3">
              <div class="col-md-6">
                 <label for="username" class="form-label">Username</label>
                 <input type="text" class="form-control" id="name" name="name">
              </div>
              <div class="col-md-6">
                 <label for="passwordHash" class="form-label">Password</label>
                 <input type="password" class="form-control" id="passwordHash" name="passwordHash">
              </div>
              <div class="col-md-6">
                 <label for="city" class="form-label">City</label>
                 <input type="text" class="form-control" id="city" name="city">
              </div>
              <div class="container text-center">
                 <button type="submit" class="btn btn-primary mx-2">Register</button>
              </div>
            </form:form>
            <c:if test="${ not empty error }">
              <p style="color:red">${ message }</p>
            </c:if>
        </div>
    </body>
</html>