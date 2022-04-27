package control;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DAO;
import entity.OrderDetail;
import entity.Product;

/**
 * Servlet implementation class AddToCart
 */
@WebServlet("/addToCart")
public class AddToCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DAO dao = new DAO();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddToCart() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int sl = 1;
		Product product = null;
		String pId = request.getParameter("pid");
		if (request.getParameter("id") != null) {
			pId = request.getParameter("id");
			sl = Integer.parseInt(request.getParameter("sl"));
		}
		product = dao.getProductByID(pId);

		if (product != null) {
			HttpSession session = request.getSession();
			Object obj = session.getAttribute("cart");// luu tam vao session
			if (obj == null) {// tao moi
				// Tao mat hang
				OrderDetail orderDetail = new OrderDetail(product.getPrice(), product, 1);

				// gio hang co nhieu mat hang
				Map<String, OrderDetail> map = new HashMap<String, OrderDetail>();
				map.put(pId, orderDetail);// them mat hang vao ds

				session.setAttribute("cart", map);// luu tam vao session
			} else {
				Map<String, OrderDetail> map = (Map<String, OrderDetail>) obj;
				OrderDetail orderDetail = null;
				orderDetail = map.get(pId);
				if (orderDetail == null) {
					orderDetail = new OrderDetail();
					orderDetail.setProduct(product);
					orderDetail.setQuantity(1);
					orderDetail.setPrice(product.getPrice());

					map.put(pId, orderDetail);
				} else {
					if (sl == 0) {
						map.remove(pId);
					} else if (request.getParameter("sl") == null) {
						orderDetail.setQuantity(orderDetail.getQuantity() + 1);
					} else {
						orderDetail.setQuantity(sl);
					}
					orderDetail.setPrice(product.getPrice() * orderDetail.getQuantity());
				}

				session.setAttribute("cart", map);// luu tam vao session
			}
			response.sendRedirect("cart");
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
