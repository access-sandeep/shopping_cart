package my.custom.learning.weblearn.controller;

import java.net.URI;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import jakarta.validation.Valid;
import my.custom.learning.weblearn.AppConstants;
import my.custom.learning.weblearn.service.UserService;

@RestController
public class UserController {

	@Autowired
	private UserService userService;
	
	public UserController(UserService userService) {
		super();
		this.userService = userService;
	}
}
