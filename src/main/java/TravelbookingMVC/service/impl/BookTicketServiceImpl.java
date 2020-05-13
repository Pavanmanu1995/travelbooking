package TravelbookingMVC.service.impl;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import TravelbookingMVC.entity.BookTicket;
import TravelbookingMVC.entity.User;
import TravelbookingMVC.repository.BookTicketRepository;
import TravelbookingMVC.repository.UserRepository;
import TravelbookingMVC.service.BookTicketService;

@Service
public class BookTicketServiceImpl implements BookTicketService{

	@Autowired
	private BookTicketRepository bookTicketRepository;
	
	@Autowired
	private UserRepository userRepository;

	@Override
	public BookTicket saveBooking(BookTicket booking, int userId) {
		User user=userRepository.findById(userId).get();
		
		if(user.getAge()>=30) {
			int distance=booking.getDistance()*10;
			double discount=distance-(distance*5)/100;
			booking.setPrice(discount);
		}
		else if(user.getAge()>=50) {
			int distance=booking.getDistance()*10;
			double discount=distance-(distance*10)/100;
			booking.setPrice(discount);
		}
		else {
			int distance=booking.getDistance()*10;
			booking.setPrice(distance);
		}
		booking.setUser(user);
		bookTicketRepository.save(booking);
		return booking;
	}

	@Override
	public List<BookTicket> getbookedUser(int userId, Date date) {
		
		List<BookTicket> list=bookTicketRepository.findAll();
		List<BookTicket> result=new ArrayList<BookTicket>();
		for (BookTicket bookTicket : list) {
			if(bookTicket.getDateOfJourney().compareTo(date)==0&&bookTicket.getUser().getUserId()==userId) {
				result.add(bookTicket);
			}
		}
		return result;
	}

	@Override
	public BookTicket saveBooking(BookTicket booking) {
		
		return bookTicketRepository.save(booking);
	}
	
}
