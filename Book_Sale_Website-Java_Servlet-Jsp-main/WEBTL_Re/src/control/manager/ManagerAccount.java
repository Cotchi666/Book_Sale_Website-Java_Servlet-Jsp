package control.manager;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAO;
import entity.Account;

/**
 * Servlet implementation class ManagerAccount
 */
@WebServlet("/mngAccount")
public class ManagerAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DAO dao = new DAO();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ManagerAccount() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rqDispatcher = request.getRequestDispatcher("manager/mngAccount.jsp");
		List<Account> list = new ArrayList<Account>();
		list.clear();
		if (request.getParameter("aa") != null) {
			if (request.getParameter("aa").equals("Sửa")) {
				dao.editACC(request.getParameter("user"), request.getParameter("pass"), request.getParameter("isSell"),
						request.getParameter("isAdmin"), request.getParameter("id"));
			} else if (request.getParameter("aa").equals("Xóa")) {
				dao.deleteACC(request.getParameter("id"));
			} else {
				if (request.getParameter("type").equals("id")) {
					list.add(dao.get1Account(Integer.parseInt(request.getParameter("id"))));

				} else if (request.getParameter("type").equals("user")) {
					list = dao.searchUserName(request.getParameter("user"));
				} else if (request.getParameter("type").equals("isSell")) {
					list = dao.searchisSell(request.getParameter("isSell"));
				} else if (request.getParameter("type").equals("isAdmin")) {
					list = dao.searchisAdmin(request.getParameter("isAdmin"));
				}
				request.setAttribute("list", list);
				rqDispatcher.forward(request, response);
				return;
			}
		}
		request.setAttribute("list", dao.getAllAcc());
		if (request.getParameter("id") != null) {
			int id = Integer.parseInt(request.getParameter("id"));
			request.setAttribute("account", dao.get1Account(id));
		}

		rqDispatcher.forward(request, response);
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
