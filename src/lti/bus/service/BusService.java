package lti.bus.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lti.bus.bean.BookingBean;
import lti.bus.bean.BusBean;
import lti.bus.bean.CustomerBean;
import lti.bus.bean.ForgotBean;
import lti.bus.bean.LoginBean;
import lti.bus.bean.SearchBean;

@Service
public interface BusService {

	CustomerBean authenticate(LoginBean login);

	boolean persist(CustomerBean cust);

	String matchDetails(CustomerBean cust);

	boolean changePassword(ForgotBean bean);

	List<BusBean> searchBus(SearchBean search);

	BusBean getSelectedBus(int busId);

	BookingBean getBookedSeat(int seatNo);

	boolean persistBooking(BookingBean booked);

}
