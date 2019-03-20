
package Sample.Entity;

import java.util.HashSet;
import java.util.Set;

public class produce  {

	private int code;
	private categories categories;
	private String title;
	private float price;
	private String images;
	private Set<detailInvoice> detailInvoices = new HashSet<detailInvoice>(0);

	public produce() {
	}

	public produce(int code) {
		this.code = code;
	}

	public produce(int code, categories categories, String title, float price, String images,
			Set<detailInvoice> detailInvoices) {
		this.code = code;
		this.categories = categories;
		this.title = title;
		this.price = price;
		this.images = images;
		this.detailInvoices = detailInvoices;
	}

	public int getCode() {
		return this.code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public categories getCategories() {
		return this.categories;
	}

	public void setCategories(categories categories) {
		this.categories = categories;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public float getPrice() {
		return this.price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public String getImages() {
		return this.images;
	}

	public void setImages(String images) {
		this.images = images;
	}

	public Set<detailInvoice> getDetailInvoices() {
		return this.detailInvoices;
	}

	public void setDetailInvoices(Set<detailInvoice> detailInvoices) {
		this.detailInvoices = detailInvoices;
	}

}
