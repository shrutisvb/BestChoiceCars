package com.Cars.BestChoiceCars.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Cars {
	@Id
	private int carid;
	@Column(name = "brand")
	private String brand;
	@Column(name = "model")
	private String model;
	@Column(name = "year")
	private int year;
	@Column(name = "kms")
	private int kms;
	@Column(name = "price")
	private double price;
	@Column(name = "fuel")
	private String fuel;
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public int getKms() {
		return kms;
	}
	public void setKms(int kms) {
		this.kms = kms;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getFuel() {
		return fuel;
	}
	public void setFuel(String fuel) {
		this.fuel = fuel;
	}
	
}
