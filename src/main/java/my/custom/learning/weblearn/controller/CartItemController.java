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
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import my.custom.learning.weblearn.AppConstants;
import my.custom.learning.weblearn.entity.CartItem;
import my.custom.learning.weblearn.repository.CartItemRepository;

@RestController
public class CartItemController {
	@Autowired
	private CartItemRepository repository;

	public CartItemController(CartItemRepository repository) {
		super();
		this.repository = repository;
	}
	
	@GetMapping(path = "/cart_items", version = AppConstants.API_VERSION)
	public List<CartItem> findAll() {
		return repository.findAll();
	}
	
	@GetMapping(path = "/cart_item/{id}", version = AppConstants.API_VERSION)
	public Optional<CartItem> findById(@PathVariable Long id) throws Exception {
		return repository.findById(id);
	}
	
	@PostMapping(path = "/cart_item/add", version = AppConstants.API_VERSION)
	public ResponseEntity<CartItem> addCartItem(@Validated(CartItem.Create.class) @RequestBody CartItem cartItem) {
		CartItem createdCartItem = repository.save(cartItem);
		URI location = URI.create("/cart_item/" + createdCartItem.getCart_item_id());
		return ResponseEntity.created(location).build();
	}
	
	@PutMapping(path = "/cart_item/update_quantity/{id}", version = AppConstants.API_VERSION)
	public ResponseEntity<CartItem> updateCartItem(@Validated(CartItem.Update.class) @RequestBody CartItem cartItem, @PathVariable Long id) throws Exception {
		if(cartItem.getQuantity() <= 0) {
			repository.deleteById(id);
			return ResponseEntity.noContent().build();
		}
		
		cartItem.setCart_item_id(id);
		Optional<CartItem> existingCartItem = findById(id);
		cartItem.setQuantity(cartItem.getQuantity());
		cartItem.setCart_id(existingCartItem.get().getCart_id());
		cartItem.setProduct_id(existingCartItem.get().getProduct_id());
		
		CartItem createdCartItem = repository.save(cartItem);
		URI location = URI.create("/cart_item/" + createdCartItem.getCart_item_id());
		return ResponseEntity.created(location).build();
	}
	
	@DeleteMapping(path = "/cart_item/delete/{id}", version = AppConstants.API_VERSION)
	public ResponseEntity<Void> deleteCartItem(@PathVariable Long id) {
		repository.deleteById(id);
		return ResponseEntity.noContent().build();
	}
}
