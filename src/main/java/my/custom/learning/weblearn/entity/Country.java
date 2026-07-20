package my.custom.learning.weblearn.entity;

import java.time.LocalDateTime;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;

@Entity(name = "countries")
public class Country {

	@Id
	private Long country_id;
	private String country_name;
	private String country_region_continent;
	private String country_primary_tz;
	private LocalDateTime created_at;

	public Long getCountry_id() {
		return country_id;
	}

	public String getCountry_name() {
		return country_name;
	}

	public String getCountry_region_continent() {
		return country_region_continent;
	}

	public String getCountry_primary_tz() {
		return country_primary_tz;
	}

	public LocalDateTime getCreated_at() {
		return created_at;
	}

	public Country() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Country(Long country_id, String country_name, String country_region_continent, String country_primary_tz,
			LocalDateTime created_at) {
		super();
		this.country_id = country_id;
		this.country_name = country_name;
		this.country_region_continent = country_region_continent;
		this.country_primary_tz = country_primary_tz;
		this.created_at = created_at;
	}

	@Override
	public String toString() {
		return "Country [country_id=" + country_id + ", country_name=" + country_name + ", country_region_continent="
				+ country_region_continent + ", country_primary_tz=" + country_primary_tz + ", created_at=" + created_at
				+ "]";
	}

}
