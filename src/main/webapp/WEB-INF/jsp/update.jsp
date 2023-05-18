<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Update record</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css">
     <jsp:include page="header.jsp"/>
    <style>
        body {
                  background-color: #A5FFC9;
                }
    </style>
</head>
<body class="container">
    <form:form name="trick4" action="updateTrick" method="post">
        <input type="hidden" name="id" value="${trick4.id}">
        <div class="mb-3">
            <label for="trickName" class="form-label">TRICK NAME:</label>
            <input type="text" name="trick_name" class="form-control" id="trickName" value="${trick4.trick_name}">
        </div>
        <div class="mb-3">
            <label for="trickType" class="form-label">TRICK TYPE:</label>
            <input type="text" name="trick_type" class="form-control" id="trickType" value="${trick4.trick_type}">
        </div>
        <div class="mb-3">
            <label for="trickLevel" class="form-label">TRICK LEVEL:</label>
            <input type="text" name="trick_level" class="form-control" id="trickLevel" value="${trick4.trick_level}">
        </div>
        <div class="mb-3">
            <label for="trickScore" class="form-label">TRICK SCORE:</label>
            <input type="number" name="trick_score" class="form-control" id="trickScore" value="${trick4.trick_score}">
        </div>
        <div class="mb-3 form-check">
            <input type="checkbox" name="official_score" class="form-check-input" id="officialScore" value="${trick4.official_score}">
            <label class="form-check-label" for="officialScore">OFFICIAL SCORE</label>
        </div>
        <div class="mb-3">
            <label for="trickName2" class="form-label">TRICK NAME2:</label>
            <input type="text" name="trick_name2" class="form-control" id="trickName2" value="${trick4.trick_name2}">
        </div>
        <div class="mb-3">
            <label for="videoLink" class="form-label">VIDEO LINK:</label>
            <input type="text" name="link" class="form-control" id="videoLink" value="${trick4.link}">
        </div>
        <button type="submit" class="btn btn-primary">Update</button>
    </form:form>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>