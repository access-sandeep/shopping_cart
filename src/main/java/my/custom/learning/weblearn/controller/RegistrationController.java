package my.custom.learning.weblearn.controller;

import java.net.URI;
import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import jakarta.validation.Valid;
import my.custom.learning.weblearn.AppConstants;
import my.custom.learning.weblearn.entity.Address;
import my.custom.learning.weblearn.entity.RequestRegisterUser;
import my.custom.learning.weblearn.entity.User;
import my.custom.learning.weblearn.repository.AddressRepository;
import my.custom.learning.weblearn.repository.UserRepository;
import my.custom.learning.weblearn.utility.Md5Converter;

@RestController
public class RegistrationController {
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private AddressRepository addressRepository;
	
	public RegistrationController(UserRepository userRepository, AddressRepository addressRepository) {
		super();
		this.userRepository = userRepository;
		this.addressRepository = addressRepository;
	}

	@PostMapping(path = "/register/user", version=AppConstants.API_VERSION)
	public ResponseEntity<User> registerUser(@Valid @RequestBody RequestRegisterUser request) {
		LocalDateTime localDateTime = LocalDateTime.now();
		Address requestedAddress = request.getAddress();
		User requestedUser = request.getUser();
		try {
			Long address_id = saveAddress(requestedAddress, localDateTime);
			User response = saveUser(requestedUser, address_id, localDateTime);
			URI location = URI.create("/user/"+response.getUser_id());
			return ResponseEntity.created(location).build();
		} catch (Exception e) {
			throw new RuntimeException("Error occurred while processing the request: " + e.getMessage());
		}
	}
	
	private Long saveAddress(Address address, LocalDateTime localDateTime) throws RuntimeException {
		address.setCreated_at(localDateTime);
		try {
			Address createdAddress = addressRepository.save(address);
			return createdAddress.getAddress_id();
		} catch (Exception e) {
			throw new RuntimeException("Error occurred while saving address: " + e.getMessage());
		}
	}
	
	private User saveUser(User user, Long address_id, LocalDateTime localDateTime) throws RuntimeException {
		user.setCreated_at(localDateTime);
		user.setUser_address_id(address_id.intValue());
		try {
			user.setSecret_key(Md5Converter.md5Hash(user.getSecret_key()));
			User createdUser = userRepository.save(user);
			return createdUser;
		} catch (Exception e) {
			throw new RuntimeException("Error occurred while saving user: " + e.getMessage());
		}
	}
	
}
