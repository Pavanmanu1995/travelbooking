package TravelbookingMVC.service;

import java.sql.Date;
import java.util.List;

import TravelbookingMVC.entity.BookTicket;

public interface BookTicketService {

	public BookTicket saveBooking(BookTicket booking, int userId);

	public List<BookTicket> getbookedUser(int userId, Date date);

	public BookTicket saveBooking(BookTicket booking);

	
}
