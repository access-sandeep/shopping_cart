package my.custom.learning.weblearn.controller;

import java.net.URI;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import my.custom.learning.weblearn.AppConstants;
import my.custom.learning.weblearn.entity.ProductInventory;
import my.custom.learning.weblearn.exceptions.ProductInventoryNotFoundException;
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
			throw new ProductInventoryNotFoundException("No ProductInventory found with the ProductInventory id = "+id, "Line number 30");
		}
		return productInventory;
	}
	
	@PostMapping(path = "/product_inventory/upsert", version=AppConstants.API_VERSION)
	public ResponseEntity<ProductInventory> addProductInventory(@Validated(ProductInventory.Create.class) @RequestBody ProductInventory productInventory) {
		ProductInventory createdProductInventory = repository.save(productInventory);
		URI location = URI.create("/product_inventory/"+createdProductInventory.getInventory_id());
		return ResponseEntity.created(location).build();
	}
	
	@PostMapping(path = "/product_inventory/upsert/{id}", version=AppConstants.API_VERSION)
	public ResponseEntity<ProductInventory> updateProductInventory(@Validated(ProductInventory.Update.class) @RequestBody ProductInventory productInventory, @PathVariable Long id) {
		Optional<ProductInventory> availableProductInventory = repository.findById(id);
		productInventory.setInventory_id(id);
		
		if(productInventory.getProduct_id() == null) {
			productInventory.setProduct_id(availableProductInventory.get().getProduct_id());
		}
		
		if(productInventory.getWarehouse_id() == null) {
			productInventory.setWarehouse_id(availableProductInventory.get().getWarehouse_id());
		}
		
		if(productInventory.getQuantity_available() == null) {
			productInventory.setQuantity_available(availableProductInventory.get().getQuantity_available());
		}
		
		if(productInventory.getReorder_level() == null) {
			productInventory.setReorder_level(availableProductInventory.get().getReorder_level());
		}
		
		ProductInventory createdProductInventory = repository.save(productInventory);
		URI location = URI.create("/product_inventory/"+createdProductInventory.getInventory_id());
		return ResponseEntity.created(location).build();
	}
	
	@DeleteMapping(path = "/product_inventory/delete/{id}", version = AppConstants.API_VERSION)
	public void deleteProductInventory(@PathVariable Long id) {
		repository.deleteById(id);
	}
}
