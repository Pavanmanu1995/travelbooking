package TravelbookingMVC.controller;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import TravelbookingMVC.entity.BookTicket;
import TravelbookingMVC.entity.User;
import TravelbookingMVC.service.BookTicketService;
import TravelbookingMVC.service.UserService;

@Controller
public class UserController {

	@Autowired
	private BookTicketService bookService;
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/new")
	public String showNewUserPage(Model model) {
		User user = new User();
		model.addAttribute("user", user);

		return "user_registration";
	}
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveUser(@ModelAttribute("user") User user) {

		userService.insertUser(user);

		return "redirect:/";
	}
	@RequestMapping(value = "/saveBooking", method = RequestMethod.POST)
	public String saveBook(@RequestParam("userId") int userId, @ModelAttribute("booking") BookTicket booking) {
		bookService.saveBooking(booking, userId);
		return "redirect:/";

	}
	@RequestMapping(value = "/showBooking")
	public String viewUserHomePage(Model model) {
		List<User> listusers = userService.getAllUser();
		model.addAttribute("users", listusers);
		return "show_booking";
	}
	@RequestMapping(value = "/showbookingdetails",method=RequestMethod.POST)
	public ModelAndView get(@RequestParam("userId") int userId,@RequestParam("date") Date date) {
		ModelAndView model=new ModelAndView("show_booking");
		List<BookTicket> obj = bookService.getbookedUser(userId,date);
		List<User> users = userService.getAllUser();
		model.addObject("users",users);
		model.addObject("reg", obj);

		return model;
	}
	@RequestMapping("/edit/{userId}/{bookingId}")
	public ModelAndView showUpdateBookingPage(@PathVariable(name = "userId") int userId,@PathVariable("bookingId")int bookingId) {
		ModelAndView mav = new ModelAndView("edit_user");
		BookTicket booking = userService.getBookingById(userId,bookingId);
		mav.addObject("booking", booking);
		return mav;
	}
	
	@PostMapping("/updatenewbooking/{bookingId}/{userId}")
	public String updateUser(@ModelAttribute("booking") BookTicket booking, @PathVariable("bookingId")int bookingId,@PathVariable(name = "userId")int userId) {
		booking.setBookingId(bookingId);
		bookService.saveBooking(booking,userId);
		return "index";
	}
}
