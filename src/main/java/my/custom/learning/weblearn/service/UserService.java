package my.custom.learning.weblearn.service;

import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

import org.springframework.stereotype.Component;

import my.custom.learning.weblearn.entity.User;

@Component
public class UserService {
	private static List<User> users = new ArrayList<>();
}
