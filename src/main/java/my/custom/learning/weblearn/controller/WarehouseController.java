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

import jakarta.validation.Valid;
import my.custom.learning.weblearn.AppConstants;
import my.custom.learning.weblearn.entity.Brand;
import my.custom.learning.weblearn.entity.Warehouse;
import my.custom.learning.weblearn.exceptions.WarehouseNotFoundException;
import my.custom.learning.weblearn.repository.WarehouseRepository;

@RestController
public class WarehouseController {

	@Autowired
	private WarehouseRepository repository;
	
	public WarehouseController(WarehouseRepository repository) {
		super();
		this.repository = repository;
	}

	@GetMapping(path = "/warehouses", version=AppConstants.API_VERSION)
	public List<Warehouse> findAll() {
		return repository.findAll();
	}
	
	@GetMapping(path = "/warehouse/{id}", version=AppConstants.API_VERSION)
	public Optional<Warehouse> findById(@PathVariable Long id) {
		Optional<Warehouse> warehouse = repository.findById(id);
		if(warehouse.isEmpty()) {
			throw new WarehouseNotFoundException("No warehouse found with the warehouse id = "+id, "Line number 30");
		}
		return warehouse;
	}
	
	@PostMapping(path = "/warehouse/upsert", version=AppConstants.API_VERSION)
	public ResponseEntity<Warehouse> addWarehouse(@Validated() @RequestBody Warehouse warehouse) {
		Warehouse createdWarehouse = repository.save(warehouse);
		URI location = URI.create("/warehouse/"+createdWarehouse.getWarehouse_id());
		return ResponseEntity.created(location).build();
	}
	
	@PostMapping(path = "/warehouse/upsert/{id}", version = AppConstants.API_VERSION)
	public ResponseEntity<Warehouse> updateWarehouse(@Valid @RequestBody Warehouse warehouse, @PathVariable Long id) {
		Optional<Warehouse> savedWarehouse = java.util.Optional.empty();
		if (id != null) {
			warehouse.setWarehouse_id(id);
			savedWarehouse = repository.findById(id);

			String warehouseName = warehouse.getWarehouse_name();
			if (warehouseName == null || warehouseName.isEmpty()) {
				warehouse.setWarehouse_name(savedWarehouse.get().getWarehouse_name());
			}

			Long warehouseAddressId = warehouse.getWarehouse_address_id();
			if (warehouseAddressId == null || warehouseAddressId.equals(0L)) {
				warehouse.setWarehouse_address_id(savedWarehouse.get().getWarehouse_address_id());
			}
		}

		Warehouse createdWarehouse = repository.save(warehouse);
		URI location = URI.create("/warehouse/" + createdWarehouse.getWarehouse_id());
		return ResponseEntity.created(location).build();
	}
	
	@DeleteMapping(path = "/warehouse/delete/{id}", version = AppConstants.API_VERSION)
	public void deleteWarehouse(@PathVariable Long id) {
		repository.deleteById(id);
	}
}
