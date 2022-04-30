package control.payment;

import java.io.IOException;

import java.util.ArrayList;
import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DAO;
import entity.Account;
import entity.Order;
import entity.OrderDetail;
import entity.Product;

/**
 * Servlet implementation class PaymentControl
 */
@WebServlet("/payment")
public class PaymentControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DAO dao = new DAO();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PaymentControl() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		double tongTien = 0;

		// do what you have to do here // In your case, another loop. }

		String name = request.getParameter("fullName");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		HttpSession session = request.getSession();

		Account acc = (Account) session.getAttribute("acc");

		Map<String, OrderDetail> map = (Map<String, OrderDetail>) session.getAttribute("cart");
		if (map != null) {
			for (Map.Entry<String, OrderDetail> entry : map.entrySet()) {

				OrderDetail value = entry.getValue();
				tongTien += value.getPrice();
			}
			dao.insertOrder(name, address, phone, acc.getId(), tongTien,new Date(System.currentTimeMillis()));
			for (Map.Entry<String, OrderDetail> entry : map.entrySet()) {
				OrderDetail value = entry.getValue();
//				int idProduct, int idOrder, double price, int quanity
				if(getIdOrder(acc) != null)
				dao.insertOrderDetail(value.getProduct().getId(), getIdOrder(acc).getId(), value.getPrice(), value.getQuantity());
				// do what you have to do here
				// In your case, another loop.
			}
			session.removeAttribute("cart");
			response.sendRedirect("home");
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	private Order getIdOrder(Account acc) {
		List<Order> lOrders = new ArrayList<Order>();
		lOrders = dao.selectAllOrder();

		for (Order order : lOrders) {
			if (order.getIdAcc() == acc.getId()) {
				return order;
			}
		}
		return null;
	}
}
