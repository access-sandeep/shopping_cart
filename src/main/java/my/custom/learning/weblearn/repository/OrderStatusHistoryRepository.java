package my.custom.learning.weblearn.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import my.custom.learning.weblearn.entity.OrderStatusHistory;

public interface OrderStatusHistoryRepository extends JpaRepository<OrderStatusHistory, Long> {

}
