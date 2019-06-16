package dkd.okay.business.invoice.bo;

import java.io.Serializable;
import java.math.BigDecimal;


public class InvoiceDetail implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private String id;//id
	private String invoiceId;//主表id
	private String material;//物料id
	private BigDecimal price;//单价
	private BigDecimal amount;//数量
	private BigDecimal sum;//金额
	//临时字段
	private String name;//物资名称
	private String unit;//主要计量单位
	private String spec;//规格型号
	
	
	public String getName() {
		return name;
	}
	public String getUnit() {
		return unit;
	}
	public String getSpec() {
		return spec;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	public void setSpec(String spec) {
		this.spec = spec;
	}
	public String getId() {
		return id;
	}
	public String getInvoiceId() {
		return invoiceId;
	}
	public String getMaterial() {
		return material;
	}
	public BigDecimal getPrice() {
		return price;
	}
	public BigDecimal getAmount() {
		return amount;
	}
	public BigDecimal getSum() {
		return sum;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setInvoiceId(String invoiceId) {
		this.invoiceId = invoiceId;
	}
	public void setMaterial(String material) {
		this.material = material;
	}
	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}
	public void setSum(BigDecimal sum) {
		this.sum = sum;
	}
	
	
}
