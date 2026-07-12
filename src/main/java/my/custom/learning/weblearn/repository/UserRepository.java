package my.custom.learning.weblearn.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import my.custom.learning.weblearn.entity.User;

public interface UserRepository extends JpaRepository<User, Integer> {

}
