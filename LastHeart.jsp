.<%@page import="Model.Score"%>
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
	<%
		Connection cnn=DBUtil.connect();
		Statement st= cnn.createStatement();
		String q="select * from heart";
		ResultSet rs=st.executeQuery(q);
		int a=0;
		
		while(rs.next()){
			a++;
		}		
		
		int score=0;
		String q2="select * from heart where id="+a;
		rs=st.executeQuery(q2);
		if(rs.next()){
			score=rs.getInt("score");
		}
		
		Score s=new Score();
		s.setScore(score);
		
		rs.close();
		st.close();
		cnn.close();
		%>
	<div class="container">
		<center><br><br><br><br><br>
		<ul>
		 <li class="list-group-item list-group-item-warning">Hesaplama Tamamlandi</li>
		  <li class="list-group-item list-group-item-warning">HEART SKORU= <%=s%></li>
		</ul>
		 
			<br>
			<a href="/Ferritin/HomePage.jsp" class="btn btn-danger" tabindex="-1"
				role="button" aria-disabled="true"> Anasayfaya Don</a>
		</center>
	</div>
</body>
</html>