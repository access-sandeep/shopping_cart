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
import my.custom.learning.weblearn.entity.Products;
import my.custom.learning.weblearn.entity.User;
import my.custom.learning.weblearn.exceptions.ProductNotFoundException;
import my.custom.learning.weblearn.exceptions.UserNotFoundException;
import my.custom.learning.weblearn.repository.ProcuctsRepository;

@RestController
public class ProductsController {

	@Autowired
	private ProcuctsRepository repository;
	
	public ProductsController(ProcuctsRepository repository) {
		super();
		this.repository = repository;
	}

	@GetMapping(path = "/products", version=AppConstants.API_VERSION)
	public List<Products> findAll() {
		return repository.findAll();
	}
	
	@GetMapping(path = "/products/{id}", version=AppConstants.API_VERSION)
	public Optional<Products> findById(@PathVariable int id) {
		Optional<Products> product = repository.findById(id);
		if(product.isEmpty()) {
			throw new ProductNotFoundException("No product found with the product id = "+id, "Line number 44 in ProductsController.java");
		}
		return product;
	}
	
	@PostMapping(path = "/products/add", version=AppConstants.API_VERSION)
	public ResponseEntity<Products> addProduct(@Valid @RequestBody Products product) {
		LocalDateTime localDateTime = LocalDateTime.now();
		product.setCreated_at(localDateTime);
		Products createProduct = repository.save(product);
		URI location = URI.create("/products/"+createProduct.getProduct_id());
		return ResponseEntity.created(location).build();
	}
}
