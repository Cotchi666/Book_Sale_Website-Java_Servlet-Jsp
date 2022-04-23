/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.DAO;
import entity.Item;
import entity.Order;
import entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "OrderControl", urlPatterns = { "/order" })
public class OrderControl extends HttpServlet {
	List<Item> listItems;
	DAO dao = new DAO();

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");

	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();

		ServletOutputStream out = response.getOutputStream();

		if (session.getAttribute("order") != null) {
			Order order = (Order) session.getAttribute("order");
			listItems = order.getItems();
			for(int i= 0; i< listItems.size(); i++) {
				String namesp = listItems.get(i).getProduct().getName();
				
				double pricesp =listItems.get(i).getProduct().getPrice();
				String pricespcv = Double.toString(pricesp);
				
				int amount =listItems.get(i).getQuantity();
				dao.insertOrder( namesp,pricespcv,amount);
						
			}
			

		} else {
			out.println("<html>");
			out.println("<head><title>22222</title></head>");

			out.println("<body>");
			out.println("<h3>Hello World</h3>");
			out.println("This is my first Servlet");
			out.println("</body>");
			out.println("<html>");
		}

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	@Override
	public String getServletInfo() {
		return "Short description";
	}// </editor-fold>

}
