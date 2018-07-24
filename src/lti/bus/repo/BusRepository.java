
package lti.bus.repo;

import java.util.List;

import lti.bus.bean.BookingBean;
import lti.bus.bean.BusBean;
import lti.bus.bean.CustomerBean;
import lti.bus.bean.ForgotBean;
import lti.bus.bean.LoginBean;
import lti.bus.bean.SearchBean;

public interface BusRepository

{

	CustomerBean validate(LoginBean login);

	boolean save(CustomerBean cust);

	String matchDetails(CustomerBean cust);

	boolean changePassword(ForgotBean bean);

	List<BusBean> searchBus(SearchBean search);

	BusBean selectedBus(int busId);

	BookingBean bookedSeat(int seatNo);

	boolean save(BookingBean booked);

}