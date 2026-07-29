package my.custom.learning.weblearn.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import my.custom.learning.weblearn.utility.AuthorizationUtil;

/**
 * Example controller demonstrating role-based authorization patterns
 * This controller shows various ways to implement authorization in your endpoints
 */
@RestController
@RequestMapping("/api/auth-examples")
public class AuthorizationExampleController {

	/**
	 * Example 1: Endpoint only accessible by ADMIN role
	 */
	@GetMapping("/admin-only")
	@PreAuthorize("hasRole('ADMIN')")
	public ResponseEntity<String> adminOnlyEndpoint() {
		return ResponseEntity.ok("This endpoint is for admins only. Current user: " + AuthorizationUtil.getCurrentUserEmail());
	}

	/**
	 * Example 2: Endpoint accessible by multiple roles (ADMIN or MANAGER)
	 */
	@GetMapping("/admin-or-manager")
	@PreAuthorize("hasRole('ADMIN') or hasRole('MANAGER')")
	public ResponseEntity<String> adminOrManagerEndpoint() {
		String userEmail = AuthorizationUtil.getCurrentUserEmail();
		return ResponseEntity.ok("This endpoint is for admins or managers. Current user: " + userEmail);
	}

	/**
	 * Example 3: Using hasAnyRole - Endpoint accessible by USER, MANAGER, or ADMIN
	 */
	@GetMapping("/multiple-roles")
	@PreAuthorize("hasAnyRole('USER', 'MANAGER', 'ADMIN')")
	public ResponseEntity<String> multipleRolesEndpoint() {
		return ResponseEntity.ok("Accessible by multiple roles");
	}

	/**
	 * Example 4: Using @Secured annotation (older style, still valid)
	 */
	@GetMapping("/secured-admin")
	@Secured({ "ROLE_ADMIN" })
	public ResponseEntity<String> securedAdminEndpoint() {
		return ResponseEntity.ok("Using @Secured annotation for admin access");
	}

	/**
	 * Example 5: Any authenticated user can access
	 */
	@GetMapping("/authenticated-users-only")
	@PreAuthorize("isAuthenticated()")
	public ResponseEntity<String> authenticatedUsersOnly() {
		String userEmail = AuthorizationUtil.getCurrentUserEmail();
		String[] roles = AuthorizationUtil.getUserRoles();
		return ResponseEntity.ok(String.format("Welcome %s. Your roles: %s", userEmail, java.util.Arrays.toString(roles)));
	}

	/**
	 * Example 6: Programmatic authorization check
	 */
	@GetMapping("/check-role")
	public ResponseEntity<String> checkRoleProgrammatically() {
		if (!AuthorizationUtil.isAuthenticated()) {
			return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("User not authenticated");
		}

		String userEmail = AuthorizationUtil.getCurrentUserEmail();

		if (AuthorizationUtil.hasRole("ADMIN")) {
			return ResponseEntity.ok("User " + userEmail + " is ADMIN");
		}

		if (AuthorizationUtil.hasRole("MANAGER")) {
			return ResponseEntity.ok("User " + userEmail + " is MANAGER");
		}

		if (AuthorizationUtil.hasRole("USER")) {
			return ResponseEntity.ok("User " + userEmail + " is USER");
		}

		return ResponseEntity.status(HttpStatus.FORBIDDEN).body("User has no recognized role");
	}

	/**
	 * Example 7: Complex authorization logic with OR/AND conditions
	 */
	@PostMapping("/complex-auth")
	@PreAuthorize("(hasRole('ADMIN') and hasRole('MANAGER')) or hasRole('SUPER_ADMIN')")
	public ResponseEntity<String> complexAuthorization() {
		return ResponseEntity.ok("Complex authorization check passed");
	}

	/**
	 * Example 8: Combining multiple conditions
	 */
	@GetMapping("/combined-conditions")
	@PreAuthorize("isAuthenticated() and (hasRole('ADMIN') or hasRole('MANAGER'))")
	public ResponseEntity<String> combinedConditions() {
		return ResponseEntity.ok("User is authenticated and has admin or manager role");
	}

	/**
	 * Example 9: Get current user information
	 */
	@GetMapping("/current-user-info")
	@PreAuthorize("isAuthenticated()")
	public ResponseEntity<UserInfoDTO> getCurrentUserInfo() {
		String email = AuthorizationUtil.getCurrentUserEmail();
		String[] roles = AuthorizationUtil.getUserRoles();
		return ResponseEntity.ok(new UserInfoDTO(email, roles));
	}

	/**
	 * Example 10: Endpoint with no authorization (public)
	 */
	@GetMapping("/public")
	public ResponseEntity<String> publicEndpoint() {
		return ResponseEntity.ok("This endpoint is public and accessible to everyone");
	}

	/**
	 * DTO for user information response
	 */
	public static class UserInfoDTO {
		private String email;
		private String[] roles;

		public UserInfoDTO(String email, String[] roles) {
			this.email = email;
			this.roles = roles;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String[] getRoles() {
			return roles;
		}

		public void setRoles(String[] roles) {
			this.roles = roles;
		}
	}
}
