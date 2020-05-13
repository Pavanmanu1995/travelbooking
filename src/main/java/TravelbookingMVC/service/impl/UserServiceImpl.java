package TravelbookingMVC.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import TravelbookingMVC.entity.BookTicket;
import TravelbookingMVC.entity.User;
import TravelbookingMVC.repository.BookTicketRepository;
import TravelbookingMVC.repository.UserRepository;
import TravelbookingMVC.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	
	@Autowired
	private BookTicketRepository bookTicketRepository;
	
	@Autowired
	private UserRepository userRepository;

	@Override
	public User insertUser(User user) {
		return userRepository.save(user);
	}

	@Override
	public List<User> getAllUser() {
		
		return userRepository.findAll();
	}

	@Override
	public BookTicket getBookingById(int userId,int bookingId){
		BookTicket book=bookTicketRepository.findById(bookingId).get();
		if(book.getUser().getUserId()==userId) {
			return book;
		}
		return null;
	}
}
