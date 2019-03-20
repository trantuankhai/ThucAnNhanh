package Sample.Dao;

import java.util.HashMap;

import Bean.produce;
import Sample.DTO.produceDTO;

public class cartBean extends HashMap {
	public void addSanPham(produceDTO sp) {
		String key = sp.getProduce().getCode();
		if (this.containsKey(key)) {
			int oldQuantity = ((produceDTO) this.get(key)).getQuantity();
			((produceDTO) this.get(key)).setQuantity(oldQuantity + 1);
		} else {
			this.put(sp.getProduce().getCode(), sp);
		}

	}

	public boolean removeSanPham(String code) {
		if (this.containsKey(code)) {
			this.remove(code);
			return true;
		}

		return false;

	}

}
