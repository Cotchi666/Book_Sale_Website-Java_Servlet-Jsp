package control.manager;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAO;
import entity.OrderDetail;

/**
 * Servlet implementation class ManagerOrderDetail
 */
@WebServlet("/mngOrderDetail")
public class ManagerOrderDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DAO dao = new DAO();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ManagerOrderDetail() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String id = request.getParameter("idOr");
		
		if (request.getParameter("idOr") != null) {
			List<OrderDetail> list = dao.selectAllOrderDetailIDOrder(id);
			request.setAttribute("listOrderDetail", list);
			RequestDispatcher rq = request.getRequestDispatcher("manager/mngOrderDetail.jsp");
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

}
