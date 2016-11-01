package zzl.first.bean;

import java.util.HashSet;
import java.util.Set;

public class Stock implements java.io.Serializable {

	private Integer stockId;
	private String stockCode;
	private String stockName;
	private Set<StockDailyRecord> stockDailyRecords = new HashSet<StockDailyRecord>(0);

	public Stock() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Stock(String stockCode, String stockName) {
		super();
		this.stockCode = stockCode;
		this.stockName = stockName;
	}

	public Stock(Integer stockId, String stockCode, String stockName) {
		super();
		this.stockId = stockId;
		this.stockCode = stockCode;
		this.stockName = stockName;
	}

	public Stock(String stockCode, String stockName, Set<StockDailyRecord> stockDailyRecords) {
		super();
		this.stockCode = stockCode;
		this.stockName = stockName;
		this.stockDailyRecords = stockDailyRecords;
	}

	public Stock(Integer stockId, String stockCode, String stockName, Set<StockDailyRecord> stockDailyRecords) {
		super();
		this.stockId = stockId;
		this.stockCode = stockCode;
		this.stockName = stockName;
		this.stockDailyRecords = stockDailyRecords;
	}

	public Integer getStockId() {
		return stockId;
	}

	public void setStockId(Integer stockId) {
		this.stockId = stockId;
	}

	public String getStockCode() {
		return stockCode;
	}

	public void setStockCode(String stockCode) {
		this.stockCode = stockCode;
	}

	public String getStockName() {
		return stockName;
	}

	public void setStockName(String stockName) {
		this.stockName = stockName;
	}

	public Set<StockDailyRecord> getStockDailyRecords() {
		return stockDailyRecords;
	}

	public void setStockDailyRecords(Set<StockDailyRecord> stockDailyRecords) {
		this.stockDailyRecords = stockDailyRecords;
	}

	@Override
	public String toString() {
		return "Stock [stockId=" + stockId + ", stockCode=" + stockCode + ", stockName=" + stockName
				+ ", stockDailyRecords=" + stockDailyRecords + "]";
	}

	// getter, setter and constructor
	

}