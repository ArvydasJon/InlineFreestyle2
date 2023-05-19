<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- puslapio turinio keliui nustatyti -->
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">

  <head>
      <meta charset="utf-8">
      <title>LOGIN SLALOM</title>
          <jsp:include page="header.jsp"/>
  </head>

  <body>
    <h1 class="text-center">FREESTYLE SLALOM</h1>
    <div class="container">
      <form method="POST" action="${contextPath}/prisijungti" class="form-signin">
        <h3 class="form-heading">Login</h3>

        <div class="form-group ${error != null ? 'has-error' : ''}">
            <span>${message}</span>
            <input name="username" type="text" class="form-control" placeholder="Name"
                   autofocus="true"/>
            <input name="password" type="password" class="form-control" placeholder="Password"/>
            <span>${error}</span>

            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

            <button class="btn btn-lg btn-primary btn-block" type="submit">LOGIN</button>
            <h4 class="text-center"><a href="${contextPath}/registruoti">NEW ACCOUNT</a></h4>
        </div>
      </form>
    </div>

    <jsp:include page="footer.jsp"/>
  </body>
</html>
