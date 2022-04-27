package entity;

import java.util.Date;

public class Order {
	private int id;
	private int idAcc;
	private Date date;
	private String fullName;
	private String address;
	private String phoneNumber;
	private double tongTien;

	public Order() {
		super();
	}

	public Order(int id, String fullName, String address, String phoneNumber, int idAcc, double tongTien,Date date) {
		super();
		this.id = id;
		this.idAcc = idAcc;
		this.fullName = fullName;
		this.address = address;
		this.phoneNumber = phoneNumber;
		this.tongTien = tongTien;
		this.date = date;
	}

	
	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getIdAcc() {
		return idAcc;
	}

	public void setIdAcc(int idAcc) {
		this.idAcc = idAcc;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public double getTongTien() {
		return tongTien;
	}

	public void setTongTien(double tongTien) {
		this.tongTien = tongTien;
	}

	@Override
	public String toString() {
		return "Order [id=" + id + ", idAcc=" + idAcc + ", fullName=" + fullName + ", address=" + address
				+ ", phoneNumber=" + phoneNumber + ", tongTien=" + tongTien + "]";
	}
	

}
