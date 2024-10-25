package controller;

import java.io.IOException;
import java.sql.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.AccountDAO;
import model.Account;

/**
 * Servlet implementation class dangki
 */
@WebServlet("/dang-ky")
public class dangki extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangki() {
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
		
		String tenDangNhap = request.getParameter("tenDangNhap");
		String matKhau = request.getParameter("matKhau");
		String matKhauNhapLai = request.getParameter("matKhauNhapLai");
		String hoVaTen = request.getParameter("hoVaTen");
		String gioiTinh = request.getParameter("gioiTinh");
		String ngaySinh = request.getParameter("ngaySinh");
		String diaChi = request.getParameter("diaChi");
		String dienThoai = request.getParameter("dienThoai");
		String email = request.getParameter("email");
		
		request.setAttribute("tenDangNhap", tenDangNhap);
		request.setAttribute("hoVaTen", hoVaTen);
		request.setAttribute("gioiTinh", gioiTinh);
		request.setAttribute("ngaySinh", ngaySinh);
		request.setAttribute("diaChi", diaChi);
		request.setAttribute("dienThoai", dienThoai);
		request.setAttribute("email", email);
		
		boolean error = false;
		Account accountF = new Account(tenDangNhap, matKhau, hoVaTen, gioiTinh, Date.valueOf(ngaySinh), diaChi, dienThoai, email);
		Account account1 = AccountDAO.getInstance().selectByUser(accountF);
		if(account1 != null) {
			error = true;
			request.setAttribute("hasUser", "Tên đăng nhập đã tồn tại!");
		}
		if(!matKhau.equals(matKhauNhapLai)) {
			error = true;
			request.setAttribute("errorRePass", "Mật khẩu nhập lại không chính xác");
		}
		Pattern phoneNumPattern = Pattern.compile("0+\\d{9}");
		Matcher phoneNuMatcher = phoneNumPattern.matcher(dienThoai);
		if(!phoneNuMatcher.matches()) {
			error = true;
			request.setAttribute("errorPhoneNum", "Số điện thoại bắt đầu từ 0 và có 10 kí tự");
		}
		Pattern emailPattern = Pattern.compile("\\w+@gmail.com");
		Matcher emailMatcher = emailPattern.matcher(email);
		if(!emailMatcher.matches()) {
			error = true;
			request.setAttribute("errorEmail", "Chỉ nhận gmail");
		}
		String url = "/DangNhap.jsp";
		if(error == false) {
			matKhau = model.VigenereCipher.encrypt(matKhau);
			hoVaTen = model.VigenereCipher.encrypt(hoVaTen);
			diaChi = model.VigenereCipher.encrypt(diaChi);
			dienThoai = model.VigenereCipher.encrypt(dienThoai);
			email = model.VigenereCipher.encrypt(email);
			Account account = new Account(tenDangNhap, matKhau, hoVaTen, gioiTinh, Date.valueOf(ngaySinh), diaChi, dienThoai, email);
			AccountDAO.getInstance().insert(account);
		}else {
			url = "/DangKi.jsp";
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
