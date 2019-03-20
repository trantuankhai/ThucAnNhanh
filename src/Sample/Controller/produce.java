package Sample.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBConnec.function;

@WebServlet("/produceDAO")
public class produce extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		String action = req.getParameter("action");
		String gettxtCode = req.getParameter("txtcode");
		String gettitle = req.getParameter("txttitle");
		String getprice = req.getParameter("txtprice");
		String getimages = req.getParameter("txtimages");
		System.out.println(gettxtCode);
		System.out.println(gettitle);
		System.out.println(getprice);
		System.out.println(getimages);

		if (action.equals("Delete")) {
			function fn = new function();
			fn.openConnection("sa", "123", "foodStore");
			boolean kq = fn.deleteProduce(gettxtCode);
			if (kq == true) {
				resp.sendRedirect("admin.jsp?pageid=1");
			}
		} else if (action.equals("Edit")) {
			req.setAttribute("code", gettxtCode);
			req.setAttribute("title", gettitle);
			req.setAttribute("price", getprice);
			req.setAttribute("image", getimages);
			RequestDispatcher dispatcher = req.getRequestDispatcher("editProdue.jsp");
			dispatcher.forward(req, resp);

		} else if (action.equals("Update")) {
			try {
				String codeUpdate = req.getParameter("codeUpdate");
				String titleUpdate = req.getParameter("titleUpdate");
				String priceUpdate = req.getParameter("priceUpdate");
				String imageUpdate = req.getParameter("imageUpdate");

				function fn = new function();
				fn.openConnection("sa", "123", "foodStore");
				boolean kq = fn.updateProduce(titleUpdate, priceUpdate, imageUpdate, codeUpdate);
				if (kq == true) {
					resp.sendRedirect("admin.jsp?pageid=1");
				}

			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (action.equals("Back")) {
			resp.sendRedirect("admin.jsp?pageid=1");

		}

	}

}
