package my.custom.learning.weblearn.controller;

import java.net.URI;
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
import my.custom.learning.weblearn.entity.Brand;
import my.custom.learning.weblearn.exceptions.BrandNotFoundException;
import my.custom.learning.weblearn.repository.BrandRepository;

@RestController
public class BrandController {

	@Autowired
	private BrandRepository repository;
	
	public BrandController(BrandRepository repository) {
		super();
		this.repository = repository;
	}

	@GetMapping(path = "/brands", version=AppConstants.API_VERSION)
	public List<Brand> findAll() {
		return repository.findAll();
	}
	
	@GetMapping(path = "/brand/{id}", version=AppConstants.API_VERSION)
	public Optional<Brand> findById(@PathVariable Long id) {
		Optional<Brand> brand = repository.findById(id);
		if(brand.isEmpty()) {
			throw new BrandNotFoundException("No user found with the user id = "+id, "Line number 30");
		}
		return brand;
	}
	
	@PostMapping(path = "/brand/add", version=AppConstants.API_VERSION)
	public ResponseEntity<Brand> addCategory(@Valid @RequestBody Brand brand) {
		Brand createdBrand = repository.save(brand);
		URI location = URI.create("/brand/"+createdBrand.getBrand_id());
		return ResponseEntity.created(location).build();
	}
}
