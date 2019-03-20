package Sample.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DBConnec.function;
import Sample.Dao.customerDAO;

@WebServlet("/log-in")
public class checkLogin extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = req.getParameter("btnAction");
		System.out.println(action);
		if (action.equals("Submit")) {
			HttpSession httpSession = req.getSession();
			String userName = req.getParameter("userName");
			String passWord = req.getParameter("passWord");
			function fn = new function();

			int isAdmin = customerDAO.checkLogIn(userName, passWord);
			System.out.println(isAdmin);
			if (isAdmin == 0) {
				httpSession.setAttribute("userNameAdmin", userName);
				httpSession.setMaxInactiveInterval(5000);
				resp.sendRedirect("admin.jsp?pageid=1");

			} else if (isAdmin == 1) {
				httpSession.setAttribute("userNameQuest", userName);
				httpSession.setMaxInactiveInterval(5000);
				RequestDispatcher rq = req.getRequestDispatcher("index.jsp");
				rq.forward(req, resp);

			} else {
				req.setAttribute("fail", "Sai Tài Khoản Hoặc Mật khẩu");
				RequestDispatcher rq = req.getRequestDispatcher("login.jsp");
				rq.forward(req, resp);

			}

		}

		if (action.equals("Regist")) {
			String usname = req.getParameter("userName");
			String password = req.getParameter("passWord");
			String fullname = req.getParameter("fullName");
			function fn = new function();

			boolean kq = customerDAO.insertAcount(usname, password, fullname);
			if (kq == true) {
				resp.sendRedirect("login.jsp");
			} else {
				System.out.println("looxi");

			}

		}

	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String yeucau = req.getParameter("req");
		HttpSession httpSession = req.getSession();
		if (yeucau.equals("dang-xuat")) {
			httpSession.removeAttribute("userNameAdmin");
			resp.sendRedirect("login.jsp");
		}
		if (yeucau.equals("dang-xuat-quest")) {
			httpSession.removeAttribute("userNameQuest");
			resp.sendRedirect("index.jsp");
		}
	}

}
