package Sample.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.produce;
import Sample.DTO.*;
import Sample.Dao.cartBean;

@WebServlet("/cart")
public class cart extends HttpServlet {
	/**
	 * 
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html;charset=UTF-8");
		String action = req.getParameter("action");
		if (action.equals("addtocart")) {
			String t = req.getParameter("title");
			String p = req.getParameter("price");
			String i = req.getParameter("image");
			String c = req.getParameter("code");
			HttpSession session = req.getSession(true);
			cartBean shop = new cartBean();
			shop = (cartBean) session.getAttribute("SHOP");
			session.setMaxInactiveInterval(5000);
			if (shop == null) {
				shop = new cartBean();
			}
			double price = Double.parseDouble(p);
			produce s = new produce(c, t, price, i);
			produceDTO sp = new produceDTO(s);
			shop.addSanPham(sp);
			session.setAttribute("SHOP", shop);
			RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp");
			dispatcher.forward(req, resp);

		} else if (action.equals("Xóa")) {
			String[] list = req.getParameterValues("rms");
			if (list != null) {
				HttpSession httpSession = req.getSession();
				if (httpSession != null) {
					cartBean shop = (cartBean) httpSession.getAttribute("SHOP");
					if (shop != null) {
						for (int i = 0; i < list.length; i++) {
							shop.removeSanPham(list[i]);

						}
						httpSession.setAttribute("SHOP", shop);

					}
				}
			}
			RequestDispatcher dispatcher = req.getRequestDispatcher("giohang.jsp");
			dispatcher.forward(req, resp);

		} else if (action.equals("Mua Thêm")) {
			resp.sendRedirect("index.jsp");
		} else {
			resp.sendRedirect("index.jsp");
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}

}
