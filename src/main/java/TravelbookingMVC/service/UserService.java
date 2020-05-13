package TravelbookingMVC.service;

import java.util.List;

import TravelbookingMVC.entity.BookTicket;
import TravelbookingMVC.entity.User;

public interface UserService {

public	User insertUser(User user);

public List<User> getAllUser();

public BookTicket getBookingById(int userId,int bookingId);

}
