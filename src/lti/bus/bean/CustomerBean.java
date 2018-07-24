package lti.bus.bean;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "customer_table")
@SequenceGenerator(name = "cust_id", sequenceName = "cust_req")
public class CustomerBean {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name="cust_id")
	private int custId;

	@Column(name="cust_name")
	private String custName;
	private String email;
	private String password;
	@Column(name="contact_no")
	private String contact;

	@OneToMany(mappedBy="customer")
	private Set<BookingBean> bookings;
	
	public Set<BookingBean> getBookings() {
		return bookings;
	}
	public void setBookings(Set<BookingBean> bookings) {
		this.bookings = bookings;
	}
	public int getCustId() {
		return custId;
	}
	public void setCustId(int custId) {
		this.custId = custId;
	}
	public String getCustName() {
		return custName;
	}
	public void setCustName(String custName) {
		this.custName = custName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
}
