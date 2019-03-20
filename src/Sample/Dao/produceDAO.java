package Sample.Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import Sample.Entity.produce;
import Sample.Util.hibernateUtil;

public class produceDAO {
	public static List<produce> getListProduce(String madm) {
		List<produce> listKH = null;
		Session session = hibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		String sql = "FROM  produce";

		if (madm.length() > 0) {
			sql += " WHERE categories =" + madm;
		}
		Query query = session.createQuery(sql);
		listKH = query.list();
		return listKH;
	}

	public static List<produce> getListProduce2(  String madm) {
		SessionFactory sessionFactory = hibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		List<produce> listt = null;
		session.beginTransaction();
		String sql = " from produce";

		if (madm.length() > 0) {
			sql += " WHERE categories = " + madm;
		}
		Query query = session.createQuery(sql);
		query.setMaxResults(4);
		listt = query.list();
		// session.getTransaction().commit();
		session.close();
		return listt;
	}

	public static boolean insertProduce(produce sp) {
		Session session = hibernateUtil.getSessionFactory().getCurrentSession();
		Transaction tx = null;
		tx = session.beginTransaction();
		try {
			tx.begin();
			session.save(sp);
			tx.commit();
			return true;

		} catch (Exception e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		}
		return false;
	}

	public static boolean deleteProduce() {

		return false;

	}

}
