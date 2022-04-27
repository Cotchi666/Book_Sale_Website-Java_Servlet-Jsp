
package dao;

import context.DBContext;

import entity.Account;
import entity.Category;
import entity.Order;
import entity.OrderDetail;
import entity.Product;

import java.util.ArrayList;
import java.sql.*;
import java.util.List;

//load data form database
public class DAO {

	// connect to server(sql server)
	Connection conn = null;
	// throw a query into sql
	PreparedStatement ps = null;
	// get data form sql
	ResultSet rs = null;

	public List<Product> getAllProduct() {
		List<Product> list = new ArrayList<Product>();
		String query = "select * from product";
		try {
			conn = new DBContext().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5),
						rs.getString(6)));
			}
		} catch (Exception e) {
		}
		return list;
	}

	public List<Product> getOneProduct() {
		List<Product> list = new ArrayList<Product>();
		String query = "select top 1 * from product";
		try {
			conn = new DBContext().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5),
						rs.getString(6)));
			}
		} catch (Exception e) {
		}
		return list;
	}

	public List<Product> getTop3() {
		List<Product> list = new ArrayList<Product>();
		String query = "select top 3 * from product";
		try {

			conn = new DBContext().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5),
						rs.getString(6)));
			}
		} catch (Exception e) {
		}
		return list;
	}

	public List<Product> getNext3Product(int amount) {
		List<Product> list = new ArrayList<Product>();
		String query = "SELECT *\n" + "  FROM product\n" + " ORDER BY id\n" + "OFFSET ? ROWS\n"
				+ " FETCH NEXT 3 ROWS ONLY";
		try {
			conn = new DBContext().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setInt(1, amount);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5),
						rs.getString(6)));
			}
		} catch (Exception e) {
		}
		return list;
	}

	public List<Product> getProductByCID(String cid) {
		List<Product> list = new ArrayList<Product>();
		String query = "select * from product\n" + "where cateID = ?";
		try {
			conn = new DBContext().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, cid);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5),
						rs.getString(6)));
			}
		} catch (Exception e) {
		}
		return list;
	}

	public List<Product> getProductLikedLoad() {
		List<Product> list = new ArrayList<Product>();
		String query = "select * from product where cateID = 5";
		try {
			conn = new DBContext().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5),
						rs.getString(6)));
			}
		} catch (Exception e) {
		}
		return list;
	}

	public List<Product> getProductByCIDLoad() {
		List<Product> list = new ArrayList<Product>();
		String query = "select * from product where cateID = 1 or cateID = 2 or cateID = 3 or cateID = 4";
		try {
			conn = new DBContext().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5),
						rs.getString(6)));
			}
		} catch (Exception e) {
		}
		return list;
	}

	public List<Product> getProductBySellID(int id) {
		List<Product> list = new ArrayList<Product>();
		String query = "select * from product\n" + "where sell_ID = ?";
		try {
			conn = new DBContext().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5),
						rs.getString(6)));
			}
		} catch (Exception e) {
		}
		return list;
	}

	public List<Product> searchByName(String txtSearch) {
		List<Product> list = new ArrayList<Product>();
		String query = "select * from product\n" + "where [name] like ?";
		try {
			conn = new DBContext().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, "%" + txtSearch + "%");
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5),
						rs.getString(6)));
			}
		} catch (Exception e) {
		}
		return list;
	}

	public Product getProductByID(String id) {
		String query = "select * from product\n" + "where id = ?";
		try {
			conn = new DBContext().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				// int id, String name, String image, double price, String title, String
				// description
				return new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5),
						rs.getString(6));
			}
		} catch (Exception e) {
		}
		return null;
	}

	public List<Category> getAllCategory() {
		List<Category> list = new ArrayList<Category>();
		String query = "select * from Category";
		try {
			conn = new DBContext().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Category(rs.getInt(1), rs.getString(2), rs.getString(3)));
			}
		} catch (Exception e) {
		}
		return list;
	}

	public Product getLast() {
		String query = "select top 1 * from product\n" + "order by id desc";
		try {
			conn = new DBContext().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5),
						rs.getString(6));
			}
		} catch (Exception e) {
		}
		return null;
	}

	public Account login(String user, String pass) {

		String query = "select * from account\n" + "where [user] = ?\n" + "and pass = ?";
		try {
			conn = new DBContext().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, user);
			ps.setString(2, pass);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5));
			}
		} catch (Exception e) {
		}
		return null;
	}

	public List<Account> searchUserName(String user) {
		List<Account> list = new ArrayList<Account>();
		String query = "select * from account\n" + "where [user] like ?";
		try {
			conn = new DBContext().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, "%" + user + "%");
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5)));
			}
		} catch (Exception e) {
		}
		return list;
	}

	public List<Account> searchisSell(String isSell) {
		List<Account> list = new ArrayList<Account>();
		String query = "select * from account\n" + "where [isSell] like ?";
		try {
			conn = new DBContext().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, "%" + isSell + "%");
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5)));
			}
		} catch (Exception e) {
		}
		return list;
	}

	public List<Account> searchisAdmin(String isAdmin) {
		List<Account> list = new ArrayList<Account>();
		String query = "select * from account\n" + "where [isAdmin] like ?";
		try {
			conn = new DBContext().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, "%" + isAdmin + "%");
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5)));
			}
		} catch (Exception e) {
		}
		return list;
	}

	public void deleteACC(String pid) {
		String query = "delete from Account\n" + "where uID = ?";
		try {
			conn = new DBContext().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, pid);
			ps.executeUpdate();
			conn.close();
		} catch (Exception e) {
		}
	}

	public void editACC(String user, String pass, String isSell, String isAdmin, String id) {
		String query = "UPDATE [dbo].[Account]\n" + "   SET [user] = ?\n" + "      ,[pass] = ?\n"
				+ "      ,[isSell] = ?\n" + "      ,[isAdmin] = ?\n" + " WHERE uID=?";
		try {
			conn = new DBContext().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, user);
			ps.setString(2, pass);
			ps.setString(3, isSell);
			ps.setString(4, isAdmin);
			ps.setString(5, id);
			ps.executeUpdate();
			conn.close();
		} catch (Exception e) {
		}
	}

	public Account get1Account(int id) {
		String query = "select * from account where uID=?";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5));
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public List<Account> getAllAcc() {
		List<Account> list = new ArrayList<Account>();
		String query = "select * from account";
		try {
			conn = new DBContext().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);

			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5)));
			}
		} catch (Exception e) {
		}
		return list;
	}

	public Account checkAccountExist(String user) {
		String query = "select * from account\n" + "where [user] = ?\n";
		try {
			conn = new DBContext().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, user);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5));
			}
		} catch (Exception e) {
		}
		return null;
	}

	public void singup(String user, String pass) {
		String query = "insert into account\n" + "values(?,?,1,0)";
		try {
			conn = new DBContext().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, user);
			ps.setString(2, pass);
			ps.executeUpdate();
		} catch (Exception e) {
		}
	}

	public void deleteProduct(String pid) {
		String query = "delete from product\n" + "where id = ?";
		try {
			conn = new DBContext().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, pid);
			ps.executeUpdate();
		} catch (Exception e) {
		}
	}

	public void insertProduct(String name, String image, String price, String title, String description,
			String category, int sid) {
		String query = "INSERT [dbo].[product] \n"
				+ "([name], [image], [price], [title], [description], [cateID], [sell_ID])\n" + "VALUES(?,?,?,?,?,?,?)";
		try {
			conn = new DBContext().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, image);
			ps.setString(3, price);
			ps.setString(4, title);
			ps.setString(5, description);
			ps.setString(6, category);
			ps.setInt(7, sid);
			ps.executeUpdate();
		} catch (Exception e) {
		}
	}

	public void editProduct(String name, String image, String price, String title, String description, String category,
			String pid) {
		String query = "update product\n" + "set [name] = ?,\n" + "[image] = ?,\n" + "price = ?,\n" + "title = ?,\n"
				+ "[description] = ?,\n" + "cateID = ?\n" + "where id = ?";
		try {
			conn = new DBContext().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, image);
			ps.setString(3, price);
			ps.setString(4, title);
			ps.setString(5, description);
			ps.setString(6, category);
			ps.setString(7, pid);
			ps.executeUpdate();
		} catch (Exception e) {
		}
	}

	

	public List<Order> selectAllOrder() {
		List<Order> list = new ArrayList<Order>();
		String query = "SELECT TOP (1000) [id]\n"
				+ "      ,[nameCustomer]\n"
				+ "      ,[address]\n"
				+ "      ,[phone]\n"
				+ "      ,[idAcc]\n"
				+ "      ,[tongTien]\n"
				+ "      ,[ngayMua]\n"
				+ "  FROM [QLG].[dbo].[Order]";
		try {
			conn = new DBContext().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Order(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5),
						rs.getDouble(6),rs.getDate(7)));
			}
		} catch (Exception e) {
		}
		return list;
	}

	public void insertOrder(String name, String address, String phone, int idAcc, double tongTien,Date date) {
		String query = "INSERT INTO [dbo].[Order]\n"
				+ "           ([nameCustomer]\n"
				+ "           ,[address]\n"
				+ "           ,[phone]\n"
				+ "           ,[idAcc]\n"
				+ "           ,[tongTien]\n"
				+ "           ,[ngayMua])\n"
				+ "     VALUES(?,?,?,?,?,?)";
		try {
			conn = new DBContext().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, address);
			ps.setString(3, phone);
			ps.setInt(4, idAcc);
			ps.setDouble(5, tongTien);
			ps.setDate(6, date);
			ps.executeUpdate();
			conn.close();
		} catch (Exception e) {
		}
	}

	public void insertOrderDetail(int idProduct, int idOrder, double price, int quanity) {
		String query = "INSERT INTO [dbo].[Order_detail]\n" + "           ([idProducts]\n" + "           ,[idOrder]\n"
				+ "           ,[price]\n" + "           ,[quantity])\n" + "     VALUES\n" + "           (?,?,?,?)";
		try {
			conn = new DBContext().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setInt(1, idProduct);
			ps.setInt(2, idOrder);
			ps.setDouble(3, price);
			ps.setInt(4, quanity);
			ps.executeUpdate();
			conn.close();
		} catch (Exception e) {
		}
	}

	public List<OrderDetail> selectAllOrderDetail() {
		List<OrderDetail> list = new ArrayList<OrderDetail>();
		String query = "SELECT TOP (1000) [id]\n" + "      ,[idProducts]\n" + "      ,[idOrder]\n" + "      ,[price]\n"
				+ "      ,[quantity]\n" + "  FROM [QLG].[dbo].[Order_detail]";
		try {
			Connection conn = new DBContext().getConnection();// mo ket noi voi sql
			PreparedStatement ps = conn.prepareStatement(query);
			ResultSet rs = ps.executeQuery();

			// int id,Product product, int idOrder,double price, int quantity
			while (rs.next()) {
				Product product = getProductByID("" + rs.getInt(2));
				list.add(new OrderDetail(rs.getInt(1), product, rs.getInt(3), rs.getDouble(4), rs.getInt(5)));
				System.out.println(product.toString());
			}
		} catch (Exception e) {
		}
		return list;
	}

	public void deleteOrder(String pid) {
		String query = "DELETE FROM [dbo].[Order]\n" + "      WHERE id = ?";
		try {
			Connection conn = new DBContext().getConnection();// mo ket noi voi sql
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, pid);
			ps.executeUpdate();
		} catch (Exception e) {
		}
	}

	public void deleteOrderDetail(String pid) {
		String query = "DELETE FROM [dbo].[Order_detail]\n" + "      WHERE idOrder= ?";
		try {
			Connection conn = new DBContext().getConnection();// mo ket noi voi sql
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, pid);
			ps.executeUpdate();
			System.out.println("xoas");
		} catch (Exception e) {
		}
	}

	public List<OrderDetail> selectAllOrderDetailIDOrder(String idOrder) {
		List<OrderDetail> list = new ArrayList<OrderDetail>();
		String query = "SELECT TOP (1000) [id]\n" + "      ,[idProducts]\n" + "      ,[idOrder]\n" + "      ,[price]\n"
				+ "      ,[quantity]\n" + "  FROM [QLG].[dbo].[Order_detail]\n" + "  where [idOrder] = ?";
		try {
			conn = new DBContext().getConnection();
			PreparedStatement ps1 = conn.prepareStatement(query);
			ps1.setString(1, idOrder);
			ResultSet rs = ps1.executeQuery();
			// int id,Product product, int idOrder,double price, int quantity
			while (rs.next()) {
				Product product = getProductByID("" + rs.getInt(2));
				list.add(new OrderDetail(rs.getInt(1), product, rs.getInt(3), rs.getDouble(4), rs.getInt(5)));
			}
		} catch (Exception e) {
		}
		return list;
	}
	public static void main(String[] args) {
		DAO dao = new DAO();
		System.out.println(dao.searchNameOrder("n").get(0).toString());
	}
	public List<Order> searchNameOrder(String name) {
		List<Order> list = new ArrayList<Order>();
		String query = "SELECT TOP (1000) [id]\n"
				+ "      ,[nameCustomer]\n"
				+ "      ,[address]\n"
				+ "      ,[phone]\n"
				+ "      ,[idAcc]\n"
				+ "      ,[tongTien]\n"
				+ "      ,[ngayMua]\n"
				+ "  FROM [QLG].[dbo].[Order]\n"
				+ "  where nameCustomer like ?";
		try {
			conn = new DBContext().getConnection();// mo ket noi voi sql
			ps = conn.prepareStatement(query);
			ps.setString(1, "%" + name + "%");
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Order(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5),
						rs.getDouble(6),rs.getDate(7)));
			}
		} catch (Exception e) {
		}
		return list;
	}
}
