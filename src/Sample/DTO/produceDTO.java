package Sample.DTO;

import java.io.Serializable;

import Bean.produce;

public class produceDTO implements Serializable {
	private produce sanpham;
	private int quantity;

	public produceDTO() {
		// TODO Auto-generated constructor stub
	}

	public produceDTO(produce sp) {
		this.sanpham = sp;
		this.quantity = 1;
		// TODO Auto-generated constructor stub
	}

	public void setProduce(produce produce) {
		this.sanpham = produce;
	}

	public produce getProduce() {
		return sanpham;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getQuantity() {
		return quantity;
	}

}
