package Bean;

import java.io.Serializable;

public class produce implements Serializable{
	private String title,image ,code;
	private double price;
	public produce( String image ,String title ,double price) {

		this.title = title;
		this.price = price;
		this.image = image;
	}
	public produce(String code ,String title ,double price, String image  ) {
		this.code  = code;
		this.title = title;
		this.price = price;
		this.image = image;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public void setImage(String image) {
		this.image = image;
	}

	public String getTitle() {
		return title;
	}
	public double getPrice() {
		return price;
	}
	public String getImage() {
		return image;
	}
public String getCode() {
	return code;
}
public void setCode(String code) {
	this.code = code;
}
}
