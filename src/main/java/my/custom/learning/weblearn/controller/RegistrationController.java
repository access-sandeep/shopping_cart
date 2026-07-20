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
		requestedAddress.setCreated_at(localDateTime);
		Address createdAddress = addressRepository.save(requestedAddress);
		Long address_id = createdAddress.getAddress_id();
		
		User requestedUser = request.getUser();
		requestedUser.setCreated_at(localDateTime);
		requestedUser.setUser_address_id(address_id.intValue());
		User createdUser = userRepository.save(requestedUser);
		URI location = URI.create("/user/"+createdUser.getUser_id());
		return ResponseEntity.created(location).build();
	}
	
}
