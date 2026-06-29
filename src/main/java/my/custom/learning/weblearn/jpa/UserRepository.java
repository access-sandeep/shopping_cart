package my.custom.learning.weblearn.jpa;

import org.springframework.data.jpa.repository.JpaRepository;

import my.custom.learning.weblearn.users.User;

public interface UserRepository extends JpaRepository<User, Integer> {

}
