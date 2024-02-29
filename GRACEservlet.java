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

import com.mysql.cj.x.protobuf.MysqlxPrepare.Prepare;

@WebServlet("/grace")
public class GRACEservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

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
		int kalp=Integer.parseInt(request.getParameter("kalp"));
		int sistolik=Integer.parseInt(request.getParameter("sistolik"));
		int kreatinin=Integer.parseInt(request.getParameter("kreatinin"));
		int killip=Integer.parseInt(request.getParameter("killip"));
		int arrest=Integer.parseInt(request.getParameter("arrest"));
		int trop=Integer.parseInt(request.getParameter("trop"));
		int st=Integer.parseInt(request.getParameter("st"));
		
		int totalScore=yas+kalp+sistolik+kreatinin+killip+arrest+trop+st;
		
		Connection cnn=null;
		
		try {
			cnn=DBUtil.connect();
			String q="insert into grace (namePat, agePat, score, scoreName, date) values(?,?,?,?,?)";
			PreparedStatement pst=cnn.prepareStatement(q);
			pst.setString(1, name);
			pst.setInt(2, age);
			pst.setInt(3, totalScore);
			pst.setString(4, "GRACE");
			pst.setString(5, date);
			pst.executeUpdate();
			response.sendRedirect("LastGrace.jsp");

			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	
	
	}

}
