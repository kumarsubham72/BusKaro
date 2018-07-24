package lti.bus.bean;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "booking")
@SequenceGenerator(name = "bookseq", sequenceName = "book_seq")
public class BookingBean {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator="bookseq")
	@Column(name = "booking_id")
	private int bookingId;
	@Column(name = "seat_no")
	private int seatNo;

	@ManyToOne
	@JoinColumn(name="bus_id")
	private BusBean bus;
	
	@ManyToOne
	@JoinColumn(name="cust_id")
	private CustomerBean customer;
	
	@Temporal(TemporalType.DATE)
	@Column(name="traveldate")
	private Date date;
	
	
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getBookingId() {
		return bookingId;
	}
	public void setBookingId(int bookingId) {
		this.bookingId = bookingId;
	}
	public int getSeatNo() {
		return seatNo;
	}
	public void setSeatNo(int seatNo) {
		this.seatNo = seatNo;
	}
	public BusBean getBus() {
		return bus;
	}
	public void setBus(BusBean bus) {
		this.bus = bus;
	}
	public CustomerBean getCustomer() {
		return customer;
	}
	public void setCustomer(CustomerBean customer) {
		this.customer = customer;
	}
}
