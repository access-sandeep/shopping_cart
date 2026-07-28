package my.custom.learning.weblearn.controller;

import java.net.URI;
import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import jakarta.validation.Valid;
import my.custom.learning.weblearn.AppConstants;
import my.custom.learning.weblearn.entity.Address;
import my.custom.learning.weblearn.entity.RequestRegisterUser;
import my.custom.learning.weblearn.entity.Role;
import my.custom.learning.weblearn.entity.User;
import my.custom.learning.weblearn.repository.AddressRepository;
import my.custom.learning.weblearn.repository.RoleRepository;
import my.custom.learning.weblearn.repository.UserRepository;
import my.custom.learning.weblearn.utility.Md5Converter;
import java.util.HashSet;
import java.util.Set;

@RestController
public class RegistrationController {
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private AddressRepository addressRepository;
	
	@Autowired
	private RoleRepository roleRepository;
	
	public RegistrationController(UserRepository userRepository, AddressRepository addressRepository, RoleRepository roleRepository) {
		super();
		this.userRepository = userRepository;
		this.addressRepository = addressRepository;
		this.roleRepository = roleRepository;
	}

	@PostMapping(path = "/register/user", version=AppConstants.API_VERSION)
	@Transactional
	public ResponseEntity<User> registerUser(@Valid @RequestBody RequestRegisterUser request) {
		System.out.println("Received request: " + request);
		LocalDateTime localDateTime = LocalDateTime.now();
		Address requestedAddress = request.getAddress();
		User requestedUser = request.getUser();
		try {
			Long address_id = saveAddress(requestedAddress, localDateTime);
			User createdUser = saveUser(requestedUser, address_id, localDateTime);
			Set<Role> userRoles = saveRoles(request.getRoles(), createdUser);
			Long firstRoleId = userRoles.isEmpty() ? 0L : userRoles.iterator().next().getRoleId();
			URI location = URI.create("/user/"+createdUser.getUser_id()+"/role/"+firstRoleId);
			return ResponseEntity.created(location).build();
		} catch (Exception e) {
			throw new RuntimeException("Error occurred while processing the request: " + e.getMessage(), e);
		}
	}
	
	private Set<Role> saveRoles(Set<String> roleNames, User user) throws RuntimeException {
		Set<Role> roles = new HashSet<>();
		
		// If no roles provided, assign default USER role
		if (roleNames == null || roleNames.isEmpty()) {
			roleNames = new HashSet<>();
			roleNames.add("USER");
		}

		for (String roleName : roleNames) {
			Role existingRole = roleRepository.findByRoleName(roleName);
			if (existingRole == null) {
				// Create new role if it doesn't exist
				Role newRole = new Role(roleName);
				Role savedRole = roleRepository.save(newRole);
				roles.add(savedRole);
			} else {
				roles.add(existingRole);
			}
		}
		
		user.setRoles(roles);
		userRepository.save(user);  // Save user with roles
		return roles;
	}

	private Long saveAddress(Address address, LocalDateTime localDateTime) throws RuntimeException {
		address.setCreated_at(localDateTime);
		try {
			Address createdAddress = addressRepository.save(address);
			System.out.println("Address saved with ID: " + createdAddress.getAddress_id());
			return createdAddress.getAddress_id();
		} catch (Exception e) {
			throw new RuntimeException("Error occurred while saving address: " + e.getMessage(), e);
		}
	}
	
	private User saveUser(User user, Long address_id, LocalDateTime localDateTime) throws RuntimeException {
		user.setCreated_at(localDateTime);
		user.setUser_address_id(address_id);
		try {
			user.setSecret_key(Md5Converter.md5Hash(user.getSecret_key()));
			User createdUser = userRepository.saveAndFlush(user);
			return createdUser;
		} catch (Exception e) {
			throw new RuntimeException("Error occurred while saving user: " + e.getMessage(), e);
		}
	}
	
}
