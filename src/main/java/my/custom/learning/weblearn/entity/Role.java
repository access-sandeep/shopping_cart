package my.custom.learning.weblearn.entity;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;

@Entity
@Table(name = "roles")
public class Role {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "role_seq")
	@SequenceGenerator(name = "role_seq", sequenceName = "role_seq", initialValue = 1, allocationSize = 1)
	@Column(name = "role_id")
	private Long roleId;
	
	@Column(name = "role_name", nullable = false, unique = true)
	private String roleName;
	
	@Column(name = "description")
	private String description;
	
	public Role() {
		super();
	}
	
	// Constructor for deserializing from JSON string (role name only)
	// This allows both "MANAGER" and {"roleName": "MANAGER"} formats
	@JsonCreator
	public Role(@JsonProperty("roleName") String roleName) {
		super();
		this.roleName = roleName;
		this.description = null;
	}
	
	public Role(String roleName, String description) {
		super();
		this.roleName = roleName;
		this.description = description;
	}
	
	public Long getRoleId() {
		return roleId;
	}
	
	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}
	
	public String getRoleName() {
		return roleName;
	}
	
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
	@Override
	public String toString() {
		return "Role [roleId=" + roleId + ", roleName=" + roleName + ", description=" + description + "]";
	}
}
