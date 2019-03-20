
package Sample.Entity;

import java.util.HashSet;
import java.util.Set;

public class invoice {

	private String mahd;
	private customer customer;
	private Set<detailInvoice> detailInvoices = new HashSet<detailInvoice>(0);

	public invoice() {
	}

	public invoice(String mahd, customer customer) {
		this.mahd = mahd;
		this.customer = customer;
	}

	public invoice(String mahd, customer customer, Set<detailInvoice> detailInvoices) {
		this.mahd = mahd;
		this.customer = customer;
		this.detailInvoices = detailInvoices;
	}

	public String getMahd() {
		return this.mahd;
	}

	public void setMahd(String mahd) {
		this.mahd = mahd;
	}

	public customer getCustomer() {
		return this.customer;
	}

	public void setCustomer(customer customer) {
		this.customer = customer;
	}

	public Set<detailInvoice> getDetailInvoices() {
		return this.detailInvoices;
	}

	public void setDetailInvoices(Set<detailInvoice> detailInvoices) {
		this.detailInvoices = detailInvoices;
	}

}
