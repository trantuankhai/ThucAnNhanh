
package Sample.Entity;

import java.util.HashSet;
import java.util.Set;
public class customer{

	private String usname;
	private String pass;
	private String fullname;
	private Integer isAdmin;
	private String diachi;
	private String sdt;
	private String email;
	private Set<invoice> invoices = new HashSet<invoice>(0);


	public customer() {
	}

	public customer(String usname) {
		this.usname = usname;
	}
	public customer(String usname, String pass, String fullname) {
		this.usname =usname;
		this.pass =pass;
		this.fullname =fullname;
	}

	public customer(String usname, String pass, String fullname, Integer isAdmin, String diachi,
			String sdt, String email, Set<invoice> invoices ) {
		this.usname = usname;
		this.pass = pass;
		this.fullname = fullname;
		this.isAdmin = isAdmin;
		this.diachi = diachi;
		this.sdt = sdt;
		this.email = email;
		this.invoices = invoices;
	
	}

	public String getUsname() {
		return this.usname;
	}

	public void setUsname(String usname) {
		this.usname = usname;
	}

	public String getPass() {
		return this.pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getFullname() {
		return this.fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public Integer getIsAdmin() {
		return this.isAdmin;
	}

	public void setIsAdmin(Integer isAdmin) {
		this.isAdmin = isAdmin;
	}

	public String getDiachi() {
		return this.diachi;
	}

	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}

	public String getSdt() {
		return this.sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Set<invoice> getInvoices() {
		return this.invoices;
	}

	public void setInvoices(Set<invoice> invoices) {
		this.invoices = invoices;
	}



}
