package entity;

import java.util.ArrayList;
import java.util.List;

public class Order {
	private int id;
	private Account customer;
	private List<Item> items;
	
	public  Order() {
		
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Account getCustomer() {
		return customer;
	}
	public void setCustomer(Account customer) {
		this.customer = customer;
	}
	public List<Item> getItems() {
		return items;
	}
	public void setItems(List<Item> items) {
		this.items = items;
	}
	
}
