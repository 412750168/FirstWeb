package zzl.first.bean;

import java.util.Date;

public class StockDailyRecord implements java.io.Serializable {

	private Integer recordId;
	private Stock stock;
	private Float priceOpen;
	private Float priceClose;
	private Float priceChange;
	private Long volume;
	private Date date;
	
	public StockDailyRecord() {
		super();
		// TODO Auto-generated constructor stub
	}
	public StockDailyRecord(Integer recordId, Stock stock, Float priceOpen, Float priceClose, Float priceChange,
			Long volume, Date date) {
		super();
		this.recordId = recordId;
		this.stock = stock;
		this.priceOpen = priceOpen;
		this.priceClose = priceClose;
		this.priceChange = priceChange;
		this.volume = volume;
		this.date = date;
	}
	public StockDailyRecord(Stock stock, Float priceOpen, Float priceClose, Float priceChange, Long volume, Date date) {
		super();
		this.stock = stock;
		this.priceOpen = priceOpen;
		this.priceClose = priceClose;
		this.priceChange = priceChange;
		this.volume = volume;
		this.date = date;
	}
	public Integer getRecordId() {
		return recordId;
	}
	public void setRecordId(Integer recordId) {
		this.recordId = recordId;
	}
	public Stock getStock() {
		return stock;
	}
	public void setStock(Stock stock) {
		this.stock = stock;
	}
	public Float getPriceOpen() {
		return priceOpen;
	}
	public void setPriceOpen(Float priceOpen) {
		this.priceOpen = priceOpen;
	}
	public Float getPriceClose() {
		return priceClose;
	}
	public void setPriceClose(Float priceClose) {
		this.priceClose = priceClose;
	}
	public Float getPriceChange() {
		return priceChange;
	}
	public void setPriceChange(Float priceChange) {
		this.priceChange = priceChange;
	}
	public Long getVolume() {
		return volume;
	}
	public void setVolume(Long volume) {
		this.volume = volume;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "StockDailyRecord [recordId=" + recordId + ", stock=" + stock + ", priceOpen=" + priceOpen
				+ ", priceClose=" + priceClose + ", priceChange=" + priceChange + ", volume=" + volume + ", date="
				+ date + "]";
	}

	//getter, setter and constructor
	
	
}
