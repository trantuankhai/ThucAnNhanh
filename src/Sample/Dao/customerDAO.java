package Sample.Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;


import Sample.Entity.customer;
import Sample.Util.hibernateUtil;

public class customerDAO {
	public static int checkLogIn(String userName, String passWord) {
		int role = -1;
		List<customer> list = null;
		Session session = hibernateUtil.getSessionFactory().openSession();
		session.beginTransaction();
		String sql = "  from customer where usname = '" + userName + "' and pass = '" + passWord + "'";
		Query query = session.createQuery(sql);
		list = query.list();
		if (list.size() > 0) {
			for (customer x : list) {
				return role = x.getIsAdmin();
				
			}
		}
		session.close();
		
		return role;

	}

	public static customer getInforCustomer(String userName) {
		Session session = hibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		customer infor = (customer) session.get(customer.class, userName);
		session.close();
		return infor;

	}

	public static boolean insertAcount(String userName, String passWord, String fullname) {
		// kiểm tra xem user đã tồn tại chưa

		Session session = hibernateUtil.getSessionFactory().getCurrentSession();
		
		try {
			session.beginTransaction();
			session.save(new customer(userName, passWord, fullname));
			session.beginTransaction().commit();
			session.close();
			return true;
		} catch (Exception e) {
			if (session.beginTransaction() != null) {
				session.beginTransaction().rollback();
				return false;
			}
		}

	

		return false;
	}

}
