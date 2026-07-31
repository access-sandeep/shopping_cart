package my.custom.learning.weblearn.controller;

import java.net.URI;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
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

	@GetMapping(path = "/brands", version = AppConstants.API_VERSION)
	public List<Brand> findAll() {
		return repository.findAll();
	}

	@GetMapping(path = "/brand/{id}", version = AppConstants.API_VERSION)
	public Optional<Brand> findById(@PathVariable Long id) {
		Optional<Brand> brand = repository.findById(id);
		if (brand.isEmpty()) {
			throw new BrandNotFoundException("No user found with the user id = " + id, "Line number 30");
		}
		return brand;
	}

	@PostMapping(path = { "/brand/upsert", "/brand/upsert/{id}" }, version = AppConstants.API_VERSION)
	public ResponseEntity<Brand> addBrand(@Valid @RequestBody Brand brand, @PathVariable(required = false) Long id) {
		Optional<Brand> savedBrand = java.util.Optional.empty();
		if (id != null) {
			brand.setBrand_id(id);
			savedBrand = repository.findById(id);

			String brandName = brand.getBrand_name();
			if (brandName == null || brandName.isEmpty()) {
				brand.setBrand_name(savedBrand.get().getBrand_name());
			}

			String brandDescription = brand.getDescription();
			if (brandDescription == null || brandDescription.isEmpty()) {
				brand.setDescription(savedBrand.get().getDescription());
			}
		}

		Brand createdBrand = repository.save(brand);;
		URI location = URI.create("/brand/" + createdBrand.getBrand_id());
		return ResponseEntity.created(location).build();
	}
	
	@DeleteMapping(path = "/brand/delete/{id}", version = AppConstants.API_VERSION)
	public void deleteBrand(@PathVariable Long id) {
		repository.deleteById(id);
	}
}
