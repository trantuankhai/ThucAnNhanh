package Sample.Util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

@SuppressWarnings("deprecation")
public class hibernateUtil {
	public static final SessionFactory sessionFactory;
	static {
		try {
			 sessionFactory = new AnnotationConfiguration().configure("Sample/Util/hibernate.cfg.xml")
					.buildSessionFactory();
			//Configuration configuration = new Configuration().configure("Sample/Util/hibernate.cfg.xml");
			//StandardServiceRegistryBuilder builder = new StandardServiceRegistryBuilder().
		//	applySettings(configuration.getProperties());
			// sessionFactory = configuration.buildSessionFactory(builder.build());
			
		} catch (Throwable ex) {
			System.err.println(ex);
			throw new ExceptionInInitializerError(ex);
		}
	}
	

	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public static Session openSession() {
		return sessionFactory.openSession();
	}
}
