
package Sample.Entity;

import java.util.HashSet;
import java.util.Set;

public class categories {

	private int id;
	private String name;
	private Set<produce> produces = new HashSet<produce>(0);

	public categories() {
	}
	public categories(String name) {
		this.name = name;
	}

	public categories(int id) {
		this.id = id;
	}
	public categories(int id , String name) {
		this.id = id;
		this.name = name;
	}

	public categories(int id, String name, Set<produce> produces) {
		this.id = id;
		this.name = name;
		this.produces = produces;
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set<produce> getProduces() {
		return this.produces;
	}

	public void setProduces(Set<produce> produces) {
		this.produces = produces;
	}

}
