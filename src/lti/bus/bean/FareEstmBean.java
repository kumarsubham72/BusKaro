package lti.bus.bean;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "est_fare")
public class FareEstmBean {                                                     //new
	@Id
	@Column(name="route_id")
	private int routeId;
	private String source;
	private String destination;
	private String distance;
	private String duration;
	
	@OneToMany(mappedBy="fest")
	private Set<BusBean> buses;
	
	public Set<BusBean> getBuses() {
		return buses;
	}
	public void setBuses(Set<BusBean> buses) {
		this.buses = buses;
	}
	public String getDistance() {
		return distance;
	}
	public void setDistance(String distance) {
		this.distance = distance;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public int getRouteId() {
		return routeId;
	}
	public void setRouteId(int routeId) {
		this.routeId = routeId;
	}
}
