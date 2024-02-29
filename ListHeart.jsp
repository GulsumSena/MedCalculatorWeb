<%@page import="Model.Info"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="utils.DBUtil"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
	integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
	integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
	<br><br><br>
	<p><h5>HEART Skoru Hesaplanan Hastalar Listelendi:</h5></p>
	
<%
	Connection cnn = DBUtil.connect();
	Statement st = cnn.createStatement();
	String q = "select * from heart";
	ResultSet rs = st.executeQuery(q);
	Info p = new Info();

		while (rs.next()) {
			p.setNameP(rs.getString("namePat"));
			p.setAgeP(rs.getInt("agePat"));
			p.setNameScore("HEART");
			p.setScore(rs.getInt("score"));
			p.setDate(rs.getString("date"));
%>
	
	<div class="list-group">
	  <button type="button" class="list-group-item list-group-item-action">Isim: <%=p.getNameP()%>
  				<br> Yas: <%=p.getAgeP()%> 
  				<br> Muayene Tarihi:<%=p.getDate() %>
  				<br> <b><%=p.getNameScore()%> - <%=p.getScore() %></b></button>
	</div>	
	<%
	}
	%>
	<hr/>
	<div class="d-grid gap-2 d-md-flex justify-content-md-end">
		<a href="/Ferritin/HomePage.jsp" class="btn btn-danger" tabindex="-1"
					role="button" aria-disabled="true"> Anasayfaya Don</a>
	
	</div>
	<br><br><br>
</body>
</html>