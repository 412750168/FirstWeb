package zzl.first.bean;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class User implements Serializable{
	
	private int id;
	private String name;
	private int number;
	
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(int id, String name, int number) {
		super();
		this.id = id;
		this.name = name;
		this.number = number;
	}
	public User(String name, int number) {
		super();
		this.name = name;
		this.number = number;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", number=" + number + "]";
	}
	
}
