package my.custom.learning.weblearn.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import my.custom.learning.weblearn.dto.OrderItemProjectionDto;
import my.custom.learning.weblearn.entity.OrderItem;

public interface OrderItemRepository extends JpaRepository<OrderItem, Long> {

	@Query("select new my.custom.learning.weblearn.dto.OrderItemProjectionDto(o.order_item_id, o.quantity, o.unit_price, o.subtotal) "
			+ "from order_items o where o.product_id = :product_id and o.order_id = :order_id")
	Optional<OrderItemProjectionDto> findByOrderProductId(@Param("order_id") Long order_id,
			@Param("product_id") Long product_id);
	
	@Query("select o from order_items o join fetch o.product where o.order_id = :order_id")
	Optional<List<OrderItem>> findByOrderOrderId(@Param("order_id") Long order_id);
}
