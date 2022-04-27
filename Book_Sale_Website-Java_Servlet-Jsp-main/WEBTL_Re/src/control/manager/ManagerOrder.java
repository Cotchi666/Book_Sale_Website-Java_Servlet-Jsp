package control.manager;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAO;
import entity.Order;
import entity.OrderDetail;

/**
 * Servlet implementation class ManagerOrder
 */
@WebServlet("/mngOrder")
public class ManagerOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DAO dao = new DAO();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ManagerOrder() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Order> liOrder = new ArrayList<Order>();
		if (request.getParameter("idOrder") != null) {
			String id = request.getParameter("idOrder");
			dao.deleteOrder(id);
			dao.deleteOrderDetail(id);
		}
		if (listOrder().size() != 0) {
			liOrder = listOrder();
			if (request.getParameter("aa") != null && request.getParameter("aa").equals("Tìm kiếm")) {
				liOrder = dao.searchNameOrder(request.getParameter("user"));
			}
			request.setAttribute("listOr", liOrder);
			RequestDispatcher rq = request.getRequestDispatcher("manager/mngOrder.jsp");
			rq.forward(request, response);
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

	private List<Order> listOrder() {
		List<Order> list = new ArrayList<Order>();
		return list = dao.selectAllOrder();
	}

}
