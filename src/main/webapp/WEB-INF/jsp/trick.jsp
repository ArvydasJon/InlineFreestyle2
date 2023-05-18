<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<title>TRICK</title>
		<jsp:include page="header.jsp"/>
	</head>
	    <style>
            body {
                      background-color: #A5FFC9;
                    }
        </style>
	<body class="container">
		<div class="table-responsive">
        <caption>TRICK INFO</caption>
			<table class="table table-striped">
				<tr>
					<td><b>Id:</b></td>
					<td>${trick3.id}</td>
				</tr>
				<tr>
					<td><b>TRICK NAME:</b></td>
					<td>${trick3.trick_name}</td>
				</tr>
				<tr>
					<td><b>TRICK TYPE:</b></td>
					<td>${trick3.trick_type}</td>
				</tr>
				<tr>
					<td><b>TRICK LEVEL:</b></td>
					<td>${trick3.trick_level}</td>
				</tr>
				<tr>
					<td><b>TRICK SCORE:</b></td>
					<td>${trick3.trick_score}</td>
				</tr>
				<tr>
					<td><b>OFFICIAL SCORE:</b></td>
					<td>${trick3.official_score}</td>
				</tr>
				<tr>
					<td><b>ALTERNATIVE NAME:</b></td>
					<td>${trick3.trick_name2}</td>
				</tr>
				<tr>
					<td><b>VIDEO LINK:</b></td>
					<td>${trick3.link}</td>
				</tr>



			</table>
		</div>
		<br>
		<a type="button" href="/" class="button">Back</a>
	</body>
</html>
