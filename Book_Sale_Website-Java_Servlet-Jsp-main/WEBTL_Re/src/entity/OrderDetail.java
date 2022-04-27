package entity;

public class OrderDetail {
	private int id;
	private double price;
	private Product product;
	private int quantity;
	private int idOrder;

	public OrderDetail() {
	}

	public OrderDetail(double price, Product product, int quantity) {
		this.price = price;
		this.product = product;
		this.quantity = quantity;
	}

	public OrderDetail(int id, Product product, int idOrder, double price, int quantity) {
		this.id = id;
		this.price = price;
		this.product = product;
		this.quantity = quantity;
		this.idOrder = idOrder;
	}

	@Override
	public String toString() {
		return "OrderDetail [id=" + id + ", price=" + price + ", product=" + product + ", quantity=" + quantity
				+ ", idOrder=" + idOrder + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getIdOrder() {
		return idOrder;
	}

	public void setIdOrder(int idOrder) {
		this.idOrder = idOrder;
	}

}
