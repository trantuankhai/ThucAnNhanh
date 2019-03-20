package Sample.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/timKiem")
public class timKiem extends HttpServlet {
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
	resp.setContentType("text/html;charset=UTF-8");
String key =req.getParameter("key");
String action  =req.getParameter("action");
HttpSession httpSession =req.getSession(true);
httpSession.setAttribute("key", key);
if(action.equals("Tìm Kiếm")) {
	resp.sendRedirect("timkiem.jsp");
}



}
}
