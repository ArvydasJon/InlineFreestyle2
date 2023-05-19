<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!-- puslapio turinio keliui nustatyti -->
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <security:authorize access="hasAuthority('admin')">
            <ul class="nav navbar-nav navbar-left">
                <li class="active"><a href="/addTrick">Add new trick</a></li>
            </ul>
        </security:authorize>

        <ul class="nav navbar-nav navbar-right">
                <c:if test="${pageContext.request.userPrincipal.name != null}"> <!-- vartotojo vardo gavimas iš užklausos -->
                    <form id="logoutForm" method="POST" action="${contextPath}/logout">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </form>
                    <a onclick="document.forms['logoutForm'].submit()" style="color: blue;">Logout, ${pageContext.request.userPrincipal.name}</a>
                </c:if>
        </ul>
    </div>
</nav>
