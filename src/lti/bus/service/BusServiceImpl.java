package lti.bus.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lti.bus.bean.BookingBean;
import lti.bus.bean.BusBean;
import lti.bus.bean.CustomerBean;
import lti.bus.bean.ForgotBean;
import lti.bus.bean.LoginBean;
import lti.bus.bean.SearchBean;
import lti.bus.repo.BusRepository;

@Service
@Transactional
public class BusServiceImpl implements BusService {

	@Autowired
	private BusRepository repo;

	@Override
	public CustomerBean authenticate(LoginBean login) {
		CustomerBean cust = repo.validate(login);
		return cust;
	}

	@Override
	public boolean persist(CustomerBean cust) {
		boolean flag = repo.save(cust);
		return flag;
	}

	@Override
	public String matchDetails(CustomerBean cust) {
		return repo.matchDetails(cust);
	}

	@Override
	public boolean changePassword(ForgotBean bean) {
		if (bean.getPassword1().equals(bean.getPassword2())) {

			return repo.changePassword(bean);

		}

		else
			return false;

	}

	@Override
	public List<BusBean> searchBus(SearchBean search) {
		return repo.searchBus(search);
	}

	@Override
	public BusBean getSelectedBus(int busId) {
		return repo.selectedBus(busId);
	}

	@Override
	public BookingBean getBookedSeat(int seatNo) {
		return repo.bookedSeat(seatNo);
	}

	@Override
	public boolean persistBooking(BookingBean booked) {
		boolean flag = repo.save(booked);
		return flag;

	}

}
