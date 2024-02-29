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
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
@WebServlet("/mascc")
public class MASCCservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String age=request.getParameter("age");
		String semptom=request.getParameter("semptom");
		String ivsivi=request.getParameter("ivsivi");
		String hipotansiyon=request.getParameter("hipotansiyon");
		String koah=request.getParameter("koah");
		String solid=request.getParameter("solid");
		String ates=request.getParameter("ates");
		String yas=request.getParameter("yas");
		
		LocalDate ld=LocalDate.now();
			
		String day=request.getParameter("day");
		String month=request.getParameter("month");
		String year=request.getParameter("year");		
		
		if(day.equals("0")&&month.equals("0")&&year.equals("0")) {
			day=""+ld.getDayOfMonth();
			month=""+ld.getMonthValue();
			year=""+ld.getYear();
		}
		
		String date=(day+"."+month+"."+year);
		
		int Iage=Integer.parseInt(age);
		int Isemptom=Integer.parseInt(semptom);
		int Iivsivi=Integer.parseInt(ivsivi);
		int Ihipotansiyon=Integer.parseInt(hipotansiyon);
		int Ikoah=Integer.parseInt(koah);
		int Isolid=Integer.parseInt(solid);
		int Iates=Integer.parseInt(ates);
		int Iyas=Integer.parseInt(yas);
		
		int totalScore=Isemptom+Iivsivi+Ihipotansiyon+Ikoah+Isolid+Iates+Iyas;
		
		Connection cnn=null;
		try {
			cnn=DBUtil.connect();
			String q="insert into mascc (namePat, agePat, scoreName, score, date) values (?,?,?,?,?)";
			PreparedStatement pst=cnn.prepareStatement(q);
			pst.setString(1, name);
			pst.setInt(2, Iage);
			pst.setString(3, "MASCC");
			pst.setInt(4, totalScore);
			pst.setString(5, date);
			
			pst.executeUpdate();
			response.sendRedirect("LastMascc.jsp");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
