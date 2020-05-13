package TravelbookingMVC.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
public class User implements Serializable{

	
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int userId;

	private String userName;

	private int Age;
	
	@JsonIgnoreProperties("user")
	@OneToMany(fetch = FetchType.EAGER,cascade = CascadeType.ALL,mappedBy = "user")
	private List<BookTicket> bookings ;

	public User() {
		super();
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getAge() {
		return Age;
	}

	public void setAge(int age) {
		Age = age;
	}

	public List<BookTicket> getBookings() {
		return bookings;
	}

	public void setBookings(List<BookTicket> bookings) {
		this.bookings = bookings;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", Age=" + Age + ", bookings=" + bookings + "]";
	}
	
	
}
