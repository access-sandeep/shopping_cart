package my.custom.learning.weblearn.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import my.custom.learning.weblearn.entity.Payment;

public interface PaymentRepository extends JpaRepository<Payment, Long> {
}
