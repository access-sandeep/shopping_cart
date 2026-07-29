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
import my.custom.learning.weblearn.entity.ProductInventory;
import my.custom.learning.weblearn.entity.Warehouse;
import my.custom.learning.weblearn.exceptions.ProductInventoryNotFoundException;
import my.custom.learning.weblearn.exceptions.WarehouseNotFoundException;
import my.custom.learning.weblearn.repository.ProcuctInventoryRepository;

@RestController
public class ProductInventoryController {

	@Autowired
	private ProcuctInventoryRepository repository;
	
	public ProductInventoryController(ProcuctInventoryRepository repository) {
		super();
		this.repository = repository;
	}

	@GetMapping(path = "/product_inventories", version=AppConstants.API_VERSION)
	public List<ProductInventory> findAll() {
		return repository.findAll();
	}
	
	@GetMapping(path = "/product_inventory/{id}", version=AppConstants.API_VERSION)
	public Optional<ProductInventory> findById(@PathVariable Long id) {
		Optional<ProductInventory> productInventory = repository.findById(id);
		if(productInventory.isEmpty()) {
			throw new ProductInventoryNotFoundException("No warehouse found with the warehouse id = "+id, "Line number 30");
		}
		return productInventory;
	}
	
	@PostMapping(path = "/product_inventory/add", version=AppConstants.API_VERSION)
	public ResponseEntity<ProductInventory> addWarehouse(@Valid @RequestBody ProductInventory productInventory) {
		ProductInventory createdProductInventory = repository.save(productInventory);
		URI location = URI.create("/product_inventory/"+createdProductInventory.getInventory_id());
		return ResponseEntity.created(location).build();
	}
}
