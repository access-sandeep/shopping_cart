package my.custom.learning.weblearn.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import my.custom.learning.weblearn.entity.Order;

public interface OrderRepository extends JpaRepository<Order, Long> {
}
