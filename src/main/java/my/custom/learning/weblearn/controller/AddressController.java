package my.custom.learning.weblearn.controller;

import java.net.URI;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import jakarta.validation.Valid;
import my.custom.learning.weblearn.AppConstants;
import my.custom.learning.weblearn.entity.Address;
import my.custom.learning.weblearn.entity.User;
import my.custom.learning.weblearn.exceptions.AddressNotFoundException;
import my.custom.learning.weblearn.repository.AddressRepository;

@RestController
public class AddressController {

	@Autowired
	private AddressRepository repository;
	
	public AddressController(AddressRepository repository) {
		super();
		this.repository = repository;
	}

	@GetMapping(path = "/addresses", version=AppConstants.API_VERSION)
	public List<Address> findAll() {
		return repository.findAll();
	}
	
	@GetMapping(path = "/address/{id}", version=AppConstants.API_VERSION)
	public Optional<Address> findById(@PathVariable int id) {
		Optional<Address> address = repository.findById(id);
		if(address.isEmpty()) {
			throw new AddressNotFoundException("No address found with the address id = "+id, "Line number 43");
		}
		return address;
	}
	
	@PostMapping(path = "/address/add", version=AppConstants.API_VERSION)
	public Long addAddress(@Valid @RequestBody Address address) {
		LocalDateTime localDateTime = LocalDateTime.now();
		address.setCreated_at(localDateTime);
		Address createAddress = repository.save(address);
		URI location = URI.create("/address/"+createAddress.getAddress_id());
		return createAddress.getAddress_id();
	}
}
