
package Sample.Entity;

public class detailInvoice  {

	private int code;
	private invoice invoice;
	private produce produce;
	private float price;
	private Integer quantity;
	private float total;

	public detailInvoice() {
	}

	public detailInvoice(int code) {
		this.code = code;
	}

	public detailInvoice(int code, invoice invoice, produce produce, float price, Integer quantity, float total) {
		this.code = code;
		this.invoice = invoice;
		this.produce = produce;
		this.price = price;
		this.quantity = quantity;
		this.total = total;
	}

	public int getCode() {
		return this.code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public invoice getInvoice() {
		return this.invoice;
	}

	public void setInvoice(invoice invoice) {
		this.invoice = invoice;
	}

	public produce getProduce() {
		return this.produce;
	}

	public void setProduce(produce produce) {
		this.produce = produce;
	}

	public float getPrice() {
		return this.price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public Integer getQuantity() {
		return this.quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public float getTotal() {
		return this.total;
	}

	public void setTotal(float total) {
		this.total = total;
	}

}
