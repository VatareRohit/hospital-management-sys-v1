package com.springboot.web.bean;

import jakarta.annotation.Nonnull;
import jakarta.persistence.Access;
import jakarta.persistence.AccessType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;

@Entity
@Table(name = "medicine_11")
@Access(AccessType.FIELD)
public class MedicineRecipt {
	@Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY, generator = "medicine_id")
   @SequenceGenerator(name = "medicine_id", allocationSize = 10000)
   @Column(name = "medicine_id")
	private int medicineId;
	@Nonnull
	private int appointId;
	private String name;
	private int dosage;
	
	private String time;
	private double qty;
	private double price;
	private double totPrice;
	private String note;

	public MedicineRecipt() {
		// TODO Auto-generated constructor stub
	}

	public MedicineRecipt(int medicineId, int appointId, String name, int dosage,  String time, double qty,
			double price, double totPrice, String note) {
		super();
		this.medicineId = medicineId;
		this.appointId = appointId;
		this.name = name;
		this.dosage = dosage;
		
		this.time = time;
		this.qty = qty;
		this.price = price;
		this.totPrice = totPrice;
		this.note = note;
	}

	public int getMedicineId() {
		return medicineId;
	}

	public void setMedicineId(int medicineId) {
		this.medicineId = medicineId;
	}

	public int getAppointId() {
		return appointId;
	}

	public void setAppointId(int appointId) {
		this.appointId = appointId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getDosage() {
		return dosage;
	}

	public void setDosage(int dosage) {
		this.dosage = dosage;
	}

	

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public double getQty() {
		return qty;
	}

	public void setQty(double qty) {
		this.qty = qty;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public double getTotPrice() {
		return totPrice;
	}

	public void setTotPrice(double totPrice) {
		this.totPrice = totPrice;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	@Override
	public String toString() {
		return "MedicineRecipt [medicineId=" + medicineId + ", appointId=" + appointId + ", name=" + name + ", dosage="
				+ dosage + ",  time=" + time + ", qty=" + qty + ", price=" + price + ", totPrice="
				+ totPrice + ", note=" + note + "]";
	}
	

}
