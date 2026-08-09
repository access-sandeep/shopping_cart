package my.custom.learning.weblearn.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import my.custom.learning.weblearn.dto.CartItemProjectionDto;
import my.custom.learning.weblearn.entity.CartItem;

public interface CartItemRepository extends JpaRepository<CartItem, Long> {

	@Query("select new my.custom.learning.weblearn.dto.CartItemProjectionDto(c.cart_item_id, c.quantity) "
			+ "from cart_items c where c.product_id = :product_id and c.cart_id = :cart_id")
	Optional<CartItemProjectionDto> findByCartProductId(@Param("cart_id") Long cart_id,
			@Param("product_id") Long product_id);
}
