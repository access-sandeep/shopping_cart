package my.custom.learning.weblearn.controller;

import java.net.URI;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Locale.Category;
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
	
	@PostMapping(path = { "/category/upsert", "/category/upsert/{id}" }, version=AppConstants.API_VERSION)
	public ResponseEntity<CategoryOfProducts> addCategory(@Valid @RequestBody CategoryOfProducts category, @PathVariable(required = false) Long id) {
		Optional<CategoryOfProducts> savedCategory = java.util.Optional.empty();
		if (id != null) {
			category.setCategory_id(id);
			savedCategory = repository.findById(id);

			String categoryName = category.getCategory_name();
			if (categoryName == null || categoryName.isEmpty()) {
				category.setCategory_name(savedCategory.get().getCategory_name());
			}

			String categoryDescription = category.getDescription();
			if (categoryDescription == null || categoryDescription.isEmpty()) {
				category.setDescription(savedCategory.get().getDescription());
			}
		}
		
		CategoryOfProducts createdCatogory = repository.save(category);
		URI location = URI.create("/category/"+createdCatogory.getCategory_id());
		return ResponseEntity.created(location).build();
	}
	
	@DeleteMapping(path = "/category/delete/{id}", version = AppConstants.API_VERSION)
	public void deleteBrand(@PathVariable Long id) {
		repository.deleteById(id);
	}
}
