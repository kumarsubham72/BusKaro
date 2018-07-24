package lti.bus.ctrl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lti.bus.bean.BusBean;
import lti.bus.bean.SearchBean;
import lti.bus.service.BusService;

@Controller
public class SearchController {

	@Autowired
	private BusService service;
	
	@RequestMapping("search.bus")
	public String searchBus(SearchBean search, HttpSession session) {
		session.setAttribute("Search", search);
		
		List<BusBean> buses = service.searchBus(search);
		session.setAttribute("Buses", buses);
		
		// Checking customer logged in or not
		
			return "searchResult";
		
	}
	
	@RequestMapping("select.bus")
	public String selectBus(@RequestParam("busid")int busId, HttpSession session) {
		if(session.getAttribute("Customer") == null)
			return "Login";
		
		BusBean selected = service.getSelectedBus(busId);
		session.setAttribute("Selected", selected);
		
		return "bookSeat";
	}  
	
	


}
