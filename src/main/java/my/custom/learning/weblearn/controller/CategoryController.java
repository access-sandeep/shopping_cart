package my.custom.learning.weblearn.controller;

import java.net.URI;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Locale.Category;
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
import my.custom.learning.weblearn.entity.CategoryOfProducts;
import my.custom.learning.weblearn.exceptions.CategoryNotFoundException;
import my.custom.learning.weblearn.repository.CategoryRepository;

@RestController
public class CategoryController {

	@Autowired
	private CategoryRepository repository;
	
	public CategoryController(CategoryRepository repository) {
		super();
		this.repository = repository;
	}

	@GetMapping(path = "/categories", version=AppConstants.API_VERSION)
	public List<CategoryOfProducts> findAll() {
		return repository.findAll();
	}
	
	@GetMapping(path = "/category/{id}", version=AppConstants.API_VERSION)
	public Optional<CategoryOfProducts> findById(@PathVariable Long id) {
		Optional<CategoryOfProducts> category = repository.findById(id);
		if(category.isEmpty()) {
			throw new CategoryNotFoundException("No user found with the user id = "+id, "Line number 30");
		}
		return category;
	}
	
	@PostMapping(path = "/category/add", version=AppConstants.API_VERSION)
	public ResponseEntity<CategoryOfProducts> addCategory(@Valid @RequestBody CategoryOfProducts category) {
		CategoryOfProducts createdCatogory = repository.save(category);
		URI location = URI.create("/category/"+createdCatogory.getCategory_id());
		return ResponseEntity.created(location).build();
	}
}
