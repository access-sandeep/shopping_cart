package my.custom.learning.weblearn.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import my.custom.learning.weblearn.entity.CartItem;

public interface CartItemRepository extends JpaRepository<CartItem, Long> {

}
