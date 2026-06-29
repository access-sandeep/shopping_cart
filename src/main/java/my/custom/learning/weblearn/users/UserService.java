package my.custom.learning.weblearn.users;

import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

import org.springframework.stereotype.Component;

@Component
public class UserService {
	private static List<User> users = new ArrayList<>();
	
	public List<User> findAll() {
		return users;
	}
	
	public User findOne(int id) {
		System.out.println("User Id::::");
		System.out.println(id);
		Predicate<? super User> predicate = user -> user.getId().equals(id);
		return users.stream()
				.filter(predicate).findFirst().orElse(null);
	}
	
	public User create(User user) {
		ZoneId zoneId = ZoneId.of("GMT");
		LocalDateTime registrationDateTime = LocalDateTime.now(zoneId);
		user.setRegistrationDateTime(registrationDateTime);
		users.add(user);
		return user;
	}
	
	public List<User> delete(int id) throws UserNotDeletedException {
		if(findOne(id)==null) {
			throw new UserNotFoundException("No user with this id was found", "Line #44, UserService.java, delete() function");
		} else {
			if(users.remove(id) != null) {
				return findAll();
			} else {
				throw new UserNotDeletedException("The user could not be removed", "from delete service function");
			}
		}
	}
	
	public User updateUser(int id, User user) throws UserNotFoundException {
		User updatingUser = findOne(id);
		if(updatingUser==null) {
			throw new UserNotFoundException("No user with this id was found", "Line #57, UserService.java, updateUser() function");
		} else {
			if(user.getName()!=null) updatingUser.setName(user.getName());
			if(user.getEmail()!=null) updatingUser.setEmail(user.getEmail());
			return updatingUser;
		}
	}
	
	public User updateName(int id, User user) throws UserNotFoundException {
		User updatingUser = findOne(id);
		if(updatingUser==null) {
			throw new UserNotFoundException("No user with this id was found", "Line #43, User.java, delete() function");
		} else {
			updatingUser.setName(user.getName());
			return updatingUser;
		}
	}
}
