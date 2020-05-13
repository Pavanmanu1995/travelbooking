package TravelbookingMVC.entity;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class BookTicket implements Serializable{
	
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int bookingId;
	private String Source;
	private String Destination;
	
	private Date DateOfJourney;
	private int Distance;
	private String FoodPreferences;
	private String TravellingWith;
	
	private double price;
	
	@ManyToOne(fetch = FetchType.LAZY)
	private User user;


	public BookTicket() {
		super();
	}


	
	public double getPrice() {
		return price;
	}



	public void setPrice(double price) {
		this.price = price;
	}



	public int getBookingId() {
		return bookingId;
	}


	public void setBookingId(int bookingId) {
		this.bookingId = bookingId;
	}


	public String getSource() {
		return Source;
	}


	public void setSource(String source) {
		Source = source;
	}


	public String getDestination() {
		return Destination;
	}


	public void setDestination(String destination) {
		Destination = destination;
	}


	public Date getDateOfJourney() {
		return DateOfJourney;
	}


	public void setDateOfJourney(Date dateOfJourney) {
		DateOfJourney = dateOfJourney;
	}


	public int getDistance() {
		return Distance;
	}


	public void setDistance(int distance) {
		Distance = distance;
	}


	public String getFoodPreferences() {
		return FoodPreferences;
	}


	public void setFoodPreferences(String foodPreferences) {
		FoodPreferences = foodPreferences;
	}


	public String getTravellingWith() {
		return TravellingWith;
	}


	public void setTravellingWith(String travellingWith) {
		TravellingWith = travellingWith;
	}


	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public String toString() {
		return "BookTicket [bookingId=" + bookingId + ", Source=" + Source + ", Destination=" + Destination
				+ ", DateOfJourney=" + DateOfJourney + ", Distance=" + Distance + ", FoodPreferences=" + FoodPreferences
				+ ", TravellingWith=" + TravellingWith + ", user=" + user + "]";
	}
	
	

}
