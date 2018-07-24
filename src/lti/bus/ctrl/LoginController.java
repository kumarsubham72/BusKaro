package lti.bus.ctrl;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import lti.bus.bean.CustomerBean;
import lti.bus.bean.LoginBean;
import lti.bus.service.BusService;

@Controller
public class LoginController {
	@Autowired
	private BusService service;

	@RequestMapping(value = "signin.bus", method = RequestMethod.POST)
	public ModelAndView signin(LoginBean login, HttpSession session) {

		ModelAndView mav = new ModelAndView();

		CustomerBean cust = service.authenticate(login);
		if (cust != null) {
			session.setAttribute("Customer", cust);

			if (cust.getPassword().equals(login.getPassword())) {
				mav.setViewName("profile");

				if (session.getAttribute("Buses") != null) {
					mav.setViewName("searchResult");
					return mav;
				}

				else {

					mav.setViewName("home");
					return mav;

				}
			}

			else {

				mav.addObject("invalidPass", "Please Enter Valid Password.");
				mav.setViewName("Login");
				return mav;

			}

		} else {
			mav.addObject("invalidEmail", "Please Enter Valid Email ID.");
			mav.setViewName("Login");
			return mav;
		}
	}

	@RequestMapping("logout.bus")
	public String logout(HttpSession session) {
		session.invalidate();
		return "home";
	}

}
