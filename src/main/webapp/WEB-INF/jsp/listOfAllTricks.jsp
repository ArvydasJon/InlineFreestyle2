<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!--%@ taglib uri="jakarta.tags.core" prefix="c" %-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <title>LIST OF ALL TRICKSss</title>
        <jsp:include page="header.jsp"/>
        <!--jsp:include page="menu.jsp"/-->


        <style>
        .frozen-header {
            position: fixed;
            top: 0;
            left: 186;

            width: 75%;
            z-index: 9999;
        }

                body {
             background-color: #66ffcc;
                }

                th {
                  font-size: 1em;
                  font-weight: bold;
                  color: blue;
                  text-align: center;
                }

                tr {
                  text-align: center;
                }

                .error {
                  color: red;
                }

                .table-responsive {
                  overflow-x: auto;
                }

                .table-striped tbody tr:nth-of-type(odd) {
                  background-color: #A5FFC9;
                }

                .table-light {
                  background-color: #f8f9fa;
                }

        </style>
    </head>
    <body class="container">

    <script>
        $(document).ready(function() {
            $(window).scroll(function() {
                if ($(this).scrollTop() > 0) {
                    $('.navbar').addClass('frozen-header');
                } else {
                    $('.navbar').removeClass('frozen-header');
                }
            });
        });
    </script>

    <div class="table-responsive">

        <h2>LIST OF ALL TRICKS</h2>
  <table class="table table-striped table-light">
            <tr>
                <th>trick_name</th>
                <th>trick_type</th>
                <th>trick_level</th>
                <th>trick_score</th>
                <th>official_score</th>
            <!--th>trick_name2</th-->
            <th>video</th>
            </tr>

                     <c:forEach var="element" items="${tricks2}">
 <!-- konstruoja įrašo atnaujinimo adresą su skaičiaus id -->
                <c:url var="atnaujinti" value="/update">
                    <c:param name="id" value="${element.id}"/>
                </c:url>

                <!-- konstruoja įrašo trynimo adresą su skaičiaus id -->
                <c:url var="trinti" value="/delete">
                    <c:param name="id" value="${element.id}"/>
                </c:url>

                <!-- konstruoja įrašo peržiūros adresą su skaičiaus id -->
                <c:url var="rodyti" value="/show">
                    <c:param name="id" value="${element.id}"/>
                </c:url>

                <tr>
                    <td>${element.trick_name}</td>
                    <td>${element.trick_type}</td>
                    <td>${element.trick_level}</td>
                    <td>${element.trick_score}</td>
               <td>${element.official_score}</td>
               <!--td>${element.trick_name2}</td-->
               <!--td>${element.link}</td-->
               <td><a href="${element.link}"target="_blank">Open link</a></td>

                    <td>
                        <!-- atvaizduoti atnaujinimo adresą -->
                  <a href="${atnaujinti}">Atnaujinti</a>
                        | <a href="${trinti}"
                             onclick="if (!(confirm('Are you sure you want to delete this record? '))) return false">Trinti</a>
                        | <!-- atvaizduoti rodymo adresą -->
                  <a href="${rodyti}">Rodyti</a>
                    </td>
                </tr>
            </c:forEach>

        </div>
    </body>
</html>

