package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import utils.DBUtil;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.time.LocalDate;
@WebServlet("/timi")
public class TIMIservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		int age=Integer.parseInt(request.getParameter("age"));
		String day=request.getParameter("day");
		String month=request.getParameter("month");
		String year=request.getParameter("year");
		
		LocalDate ld=LocalDate.now();
		
		if(day.equals("0")&&month.equals("0")&&year.equals("0")) {
			day=""+ld.getDayOfMonth();
			month=""+ld.getMonthValue();
			year=""+ld.getYear();
		}
		
		String date=(day+"."+month+"."+year);
		
		int yas=Integer.parseInt(request.getParameter("yas"));
		int risk=Integer.parseInt(request.getParameter("risk"));
		int anjina=Integer.parseInt(request.getParameter("anjina"));
		int koroner=Integer.parseInt(request.getParameter("koroner"));
		int asa=Integer.parseInt(request.getParameter("asa"));
		int st=Integer.parseInt(request.getParameter("st"));
		int trop=Integer.parseInt(request.getParameter("trop"));
		
		int totalScore=yas+risk+anjina+koroner+asa+st+trop;
		
		Connection cnn=null;
		
		try {
			cnn=DBUtil.connect();
			String q="insert into timi (namePat, agePat, score, scoreName, date) values (?,?,?,?,?)";
			PreparedStatement pst=cnn.prepareStatement(q);
			pst.setString(1, name);
			pst.setInt(2, age);
			pst.setInt(3, totalScore);
			pst.setString(4, "TIMI");
			pst.setString(5, date);
			pst.executeUpdate();
			
			response.sendRedirect("LastTimi.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
