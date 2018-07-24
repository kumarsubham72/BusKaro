package lti.bus.ctrl;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import lti.bus.bean.CustomerBean;
import lti.bus.bean.ForgotBean;
import lti.bus.service.BusService;

/**
 * 
 * @author LTI
 *
 */
@Controller
@SessionAttributes({ "forgot", "Customer" })
public class CustomerController {

	@Autowired
	private BusService service;

	@RequestMapping("doRegister.bus")
	public String doRegistration(@ModelAttribute("register") CustomerBean cust) {

		return "register";
	}

	@RequestMapping(value = "user.bus", method = RequestMethod.POST)
	public String registration(@ModelAttribute("register") CustomerBean cust, HttpSession session) {
		if (service.persist(cust)) {
			session.setAttribute("Customer", cust);
			return "Login";
		} else
			return "register";
	}

	@RequestMapping(value = "forgetpass.bus")
	public String forgetPassPage() {
		return "ForgotPassword";
	}

	@RequestMapping(value = "newPass.bus")
	public String forgotPassword(CustomerBean cust, Model model) {

		String email = service.matchDetails(cust);
		if (email != null) {
			ForgotBean bean = new ForgotBean();
			bean.setEmail(email);
			model.addAttribute("forgot", bean);
			return "ReEnterPassword";
		} else
			return null;
	}

	@RequestMapping(value = "ChangePass.bus")
	public String changePassword(@ModelAttribute("forgot") ForgotBean bean) {
		System.out.println(bean.getEmail() + "\t" + bean.getPassword1());
		if (service.changePassword(bean))

			return "Login";
		else
			return "home";

	}
}
