package lti.bus.repo;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lti.bus.bean.BookingBean;
import lti.bus.bean.BusBean;
import lti.bus.bean.CustomerBean;
import lti.bus.bean.FareEstmBean;
import lti.bus.bean.ForgotBean;
import lti.bus.bean.LoginBean;
import lti.bus.bean.SearchBean;

@Repository
public class BusRepoImpl implements BusRepository {

	@Autowired
	private SessionFactory factory;

	@Override
	public CustomerBean validate(LoginBean login) {
		Session session = factory.openSession();
		String hql = "from CustomerBean where email=:em";
		Query query = session.createQuery(hql);
		query.setParameter("em", login.getEmail());

		CustomerBean cust = (CustomerBean) query.uniqueResult();
		if (cust != null)
			return cust;

		else
			return null;
	}

	@Override
	public boolean save(CustomerBean cust) {
		Session session = factory.openSession();

		Transaction txn = session.getTransaction();

		try {
			txn.begin();
			session.save(cust);
			txn.commit();
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			txn.rollback();
			return false;
		}
	} // seat save karne ke liye isko use karna hai

	@Override
	public String matchDetails(CustomerBean cust) {

		Session session = factory.openSession();
		String hql = "FROM CustomerBean WHERE email=:em AND contact=:con";
		Transaction txn = session.beginTransaction();
		Query query = session.createQuery(hql);
		query.setParameter("em", cust.getEmail());
		query.setParameter("con", cust.getContact());
		CustomerBean bean = (CustomerBean) query.uniqueResult();
		txn.commit();

		if (bean != null)
			return bean.getEmail();
		else
			return null;

	}

	@Override
	public boolean changePassword(ForgotBean bean) { // ask sir
		System.out.println(bean.getEmail() + "\t" + bean.getPassword1());
		Session session = factory.openSession();
		String hql = "UPDATE CustomerBean SET password=:ps WHERE email=:em";

		Transaction txn = session.beginTransaction();
		Query query = session.createQuery(hql);
		query.setParameter("em", bean.getEmail());
		query.setParameter("ps", bean.getPassword1());

		int res = query.executeUpdate();
		txn.commit();

		if (res != 0)
			return true;
		else
			return false;
	}

	@Override
	public List<BusBean> searchBus(SearchBean search) {
		String hql = "from FareEstmBean where source=:src AND destination=:dst";
		Session session = factory.openSession();

		Query query = session.createQuery(hql);
		query.setParameter("src", search.getSource());
		query.setParameter("dst", search.getDestination());

		FareEstmBean fare = (FareEstmBean) query.uniqueResult();

		return new ArrayList<BusBean>(fare.getBuses());
	}

	@Override
	public BusBean selectedBus(int busId) {
		// Code to fetch bus by id
		Session session = factory.openSession();
		BusBean bus = (BusBean) session.get(BusBean.class, busId);
		return bus;
	}

	@Override
	public BookingBean bookedSeat(int seatNo) {
		Session session = factory.openSession();
		BookingBean book = (BookingBean) session.get(BookingBean.class, seatNo);
		return book;
	}

	@Override
	public boolean save(BookingBean booked) {
		Session session = factory.openSession();

		Transaction txn = session.getTransaction();

		try {
			txn.begin();
			session.save(booked);
			txn.commit();
			return true;
		} catch (Exception e) {

			e.printStackTrace();
			txn.rollback();
			return false;
		}
	}

}
