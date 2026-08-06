package my.custom.learning.weblearn.controller;

import java.net.URI;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import my.custom.learning.weblearn.AppConstants;
import my.custom.learning.weblearn.entity.ShoppingCart;
import my.custom.learning.weblearn.repository.ShoppingCartRepository;

@RestController
public class ShoppingCartController {
	
	@Autowired	
	private ShoppingCartRepository repository;

	public ShoppingCartController(ShoppingCartRepository repository) {
		super();
		this.repository = repository;
	}
	
	@PostMapping(path = "/shopping_cart/add", version = AppConstants.API_VERSION)
	public ResponseEntity<ShoppingCart> addShoppingCart(@Validated(ShoppingCart.Create.class) @RequestBody ShoppingCart shoppingCart) {
		ShoppingCart createdShoppingCart = repository.save(shoppingCart);
		URI location = URI.create("/shopping_cart/" + createdShoppingCart.getCart_id());
		return ResponseEntity.created(location).build();
	}
	
	@DeleteMapping(path = "/shopping_cart/delete/{id}", version = AppConstants.API_VERSION)
	public ResponseEntity<Void> deleteShoppingCart(@PathVariable Long id) {
		repository.deleteById(id);
		return ResponseEntity.noContent().build();
	}
}
