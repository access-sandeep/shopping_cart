package my.custom.learning.weblearn.utility;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

/**
 * Utility class for authorization and authentication checks
 * Can be used in services and controllers to verify user permissions
 */
@Component
public class AuthorizationUtil {

	/**
	 * Get the current authenticated user's email/username
	 * @return Current user's email or null if not authenticated
	 */
	public static String getCurrentUserEmail() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (authentication != null && authentication.isAuthenticated()) {
			return authentication.getName();
		}
		return null;
	}

	/**
	 * Check if current user has a specific role
	 * @param roleName Role name to check (without ROLE_ prefix)
	 * @return true if user has the role, false otherwise
	 */
	public static boolean hasRole(String roleName) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (authentication != null) {
			return authentication.getAuthorities().stream()
					.anyMatch(auth -> auth.getAuthority().equals("ROLE_" + roleName));
		}
		return false;
	}

	/**
	 * Check if current user has any of the given roles
	 * @param roleNames Array of role names to check
	 * @return true if user has at least one of the roles
	 */
	public static boolean hasAnyRole(String... roleNames) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (authentication != null) {
			for (String roleName : roleNames) {
				boolean hasRole = authentication.getAuthorities().stream()
						.anyMatch(auth -> auth.getAuthority().equals("ROLE_" + roleName));
				if (hasRole) {
					return true;
				}
			}
		}
		return false;
	}

	/**
	 * Check if user is authenticated
	 * @return true if user is authenticated
	 */
	public static boolean isAuthenticated() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		return authentication != null && authentication.isAuthenticated();
	}

	/**
	 * Get all roles of the current user
	 * @return Array of role names (without ROLE_ prefix)
	 */
	public static String[] getUserRoles() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (authentication != null) {
			return authentication.getAuthorities().stream()
					.map(auth -> auth.getAuthority().replace("ROLE_", ""))
					.toArray(String[]::new);
		}
		return new String[0];
	}
}
