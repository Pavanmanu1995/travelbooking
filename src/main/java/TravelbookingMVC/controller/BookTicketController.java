package TravelbookingMVC.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import TravelbookingMVC.entity.User;
import TravelbookingMVC.service.BookTicketService;
import TravelbookingMVC.service.UserService;

@Controller
public class BookTicketController {
	
	@Autowired
	private BookTicketService bookService;
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/newbooking")
	public String BookTicket(Model model) {
		List<User> users = userService.getAllUser();
		model.addAttribute("users", users);
		model.addAttribute("booking", new TravelbookingMVC.entity.BookTicket());
		return "travelbooking";

	}

}
