<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!-- puslapio turinio keliui nustatyti -->
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>


<!-- compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- compiled JavaScript -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>



<nav class="navbar navbar-light" style="background-color: #A5FFC9;">
  <div class="container-fluid">
    <ul class="nav navbar-nav justify-content-center">
      <li>
        <span class="text-center" style="font-size: 2.2em; font-weight: bold; color: blue;">WE LOVE SLALOM</span>
      </li>
 </ul>
 </div>

<div class="container-fluid">
                <security:authorize access="hasAuthority('admin')">
                    <ul class="nav navbar-nav navbar-left">
                        <li class="active">
                        <a style="color:blue;" href="/addTrick">Add new trick</a></li>
                    </ul>
                </security:authorize>
 </div>

                <ul class="nav navbar-nav navbar-left">
                        <c:if test="${pageContext.request.userPrincipal.name != null}"> <!-- vartotojo vardo gavimas iš užklausos -->
                            <form id="logoutForm" method="POST" action="${contextPath}/logout">
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                            </form>
                            <a onclick="document.forms['logoutForm'].submit()" style="color: blue;">Logout, ${pageContext.request.userPrincipal.name}</a>
                        </c:if>
                </ul>

                <button type="button" class="btn btn-primary ml-3">
                  <a href="/" style="color: white;">Go to trick list</a>
                </button>

      </li>
    </ul>
  </div>
</nav>