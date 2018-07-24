package lti.bus.ctrl;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import lti.bus.bean.BookingBean;
import lti.bus.bean.BusBean;
import lti.bus.bean.CustomerBean;
import lti.bus.bean.SearchBean;
import lti.bus.service.BusService;

@Controller
@SessionAttributes({ "Customer" })
public class BookingController {

	@Autowired
	private BusService service;

	@RequestMapping(value = "seat.bus", method = RequestMethod.POST)
	public String selectSeat(@RequestParam("seatno") int seatNo, HttpSession session) {
		System.out.println("-- In controller - Seat NO: " + seatNo);

		BusBean bus = (BusBean) session.getAttribute("Selected");
		SearchBean search = (SearchBean) session.getAttribute("Search");
		CustomerBean cust = (CustomerBean) session.getAttribute("Customer");

		BookingBean booked = new BookingBean();

		booked.setBus(bus);
		booked.setCustomer(cust);
		booked.setSeatNo(seatNo);
		booked.setDate(search.getDate());
		session.setAttribute("Booked", booked);

		return "Itinerary";
	}

	@RequestMapping(value = "ticket.bus", method = RequestMethod.POST)
	public String confirmBooking(HttpSession session) {
		BookingBean booked = (BookingBean) session.getAttribute("Booked");

		if (service.persistBooking(booked)) {
			System.out.println("welcome");
			return "viewTicket";
		} else
			return "payment";
	}

	@RequestMapping(value = "fetchBookings.bus", method = RequestMethod.GET)
	public ModelAndView fetchBookings(HttpSession session) {
		CustomerBean cust = (CustomerBean) session.getAttribute("Customer");
		List<BookingBean> booked = new ArrayList<BookingBean>(cust.getBookings());

		ModelAndView mav = new ModelAndView();
		mav.setViewName("myBookings");
		mav.addObject("Tickets", booked);
		return mav;
	}
}
