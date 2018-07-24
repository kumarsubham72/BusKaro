package lti.bus.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
@Entity
@Table(name="BUS_TABLE")
public class BusBean {
	@Id
	@Column (name="bus_id")
	private int busId;

	@ManyToOne
	@JoinColumn(name="route_id")
	private FareEstmBean fest;
	
	@Column (name="bus_type")
	private String busType;
	@Column (name="start_time")
	private String startTime;
	private String fare;
	
	public int getBusId() {
		return busId;
	}
	public void setBusId(int busId) {
		this.busId = busId;
	}
	public FareEstmBean getFest() {
		return fest;
	}
	public void setFest(FareEstmBean fest) {
		this.fest = fest;
	}
	public String getBusType() {
		return busType;
	}
	public void setBusType(String busType) {
		this.busType = busType;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getFare() {
		return fare;
	}
	public void setFare(String fare) {
		this.fare = fare;
	}
	

}
