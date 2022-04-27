/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author trinh
 */
public class Category {
    private int cid;
    private String cname;
    private String cimage;
    public Category() {
    }

    public Category(int cid, String cname,String cimage) {
        this.cid = cid;
        this.cname = cname;
        this.cimage = cimage;
    }

    public String getCimage() {
		return cimage;
	}

	public void setCimage(String cimage) {
		this.cimage = cimage;
	}

	public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    @Override
	public String toString() {
		return "Category [cid=" + cid + ", cname=" + cname + ", cimage=" + cimage + "]";
	}
    
}
