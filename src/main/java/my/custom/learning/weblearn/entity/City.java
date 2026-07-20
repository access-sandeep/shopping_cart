package my.custom.learning.weblearn.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity(name = "cities")
public class City {

	@Id
	private Integer city_id;

	private String city_name;
	private String state_province;

	@ManyToOne
	@JoinColumn(name = "country_id")
	private Country countries;

	public City() {
		super();
		// TODO Auto-generated constructor stub
	}

	public City(Integer city_id, Integer country_id, String city_name, String state_province) {
		super();
		this.city_id = city_id;
		this.city_name = city_name;
		this.state_province = state_province;
	}

	public Integer getCity_id() {
		return city_id;
	}

	public String getCity_name() {
		return city_name;
	}

	public String getState_province() {
		return state_province;
	}

	public Country getCountry() {
		return countries;
	}

	public void setCountry(Country countries) {
		this.countries = countries;
	}

	@Override
	public String toString() {
		return "City [city_id=" + city_id + ", city_name=" + city_name
				+ ", state_province=" + state_province + "]";
	}
}
