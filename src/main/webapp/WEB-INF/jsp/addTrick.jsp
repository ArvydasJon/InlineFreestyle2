<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>ADD TRICK</title>
    <jsp:include page="header.jsp"/>
    <style>
        .error{color:red}
    </style>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
</head>
<body class="container">
<div class="table-responsive">
<div class="table-responsive mx-auto">

    <form:form method="post" action="addt" modelAttribute="addTr" cssClass="form-horizontal">
        <div class="form-row">
            <label class="col-sm-2 control-label form-label">Trick name:</label>
            <div class="col-sm-8">
                <form:input type="text" path="trick_name" cssClass="form-control"/>
                <form:errors path="trick_name" cssClass="error"/>
            </div>
        </div>

        <div class="form-row">
            <label class="col-sm-2 control-label form-label">Trick type:</label>
            <div class="col-sm-8">
                <form:input type="text" path="trick_type" cssClass="form-control"/>
                <form:errors path="trick_type" cssClass="error"/>
            </div>
        </div>

        <div class="form-row">
            <label class="col-sm-2 control-label form-label">Trick level:</label>
            <div class="col-sm-8">
                <form:input type="text" path="trick_level" cssClass="form-control"/>
                <form:errors path="trick_level" cssClass="error"/>
            </div>
        </div>

        <div class="form-row">
            <label class="col-sm-2 control-label form-label">Trick score:</label>
            <div class="col-sm-8">
                <form:input type="number" path="trick_score" cssClass="form-control"/>
                <form:errors path="trick_score" cssClass="error"/>
            </div>
        </div>

        <div class="form-row">
            <label class="col-sm-2 control-label form-label">Official score:</label>
            <div class="col-sm-1">
                <form:checkbox path="official_score" value="false" cssClass="form-control"/>
                <form:errors path="official_score" cssClass="error"/>
            </div>
        </div>

        <div class="form-row">
            <label class="col-sm-2 control-label form-label">Alternative trick name:</label>
            <div class="col-sm-8">
                <form:input type="text" path="trick_name2" cssClass="form-control"/>
                <form:errors path="trick_name2" cssClass="error"/>
            </div>
        </div>

        <div class="form-row">
            <label class="col-sm-2 control-label form-label">Video link:</label>
            <div class="col-sm-8">
                <form:input type="text" path="link" cssClass="form-control"/>
                <form:errors path="link" cssClass="error"/>
            </div>
        </div>

        <div class="form-row">
            <div class="col-sm-offset-2 col-sm-8">
                           <input type="submit" class="btn btn-success" value="ADD TRICK"/>
                       </div>
                   </div>
               </form:form>

           </div>

           <!-- Bootstrap JS -->
           <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/js/bootstrap.min.js"></script>

           </body>
           </html>