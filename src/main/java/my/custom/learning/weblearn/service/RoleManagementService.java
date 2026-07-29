package my.custom.learning.weblearn.service;

import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import my.custom.learning.weblearn.entity.Role;
import my.custom.learning.weblearn.entity.User;
import my.custom.learning.weblearn.repository.RoleRepository;
import my.custom.learning.weblearn.repository.UserRepository;

/**
 * Service for managing user roles and permissions
 */
@Service
public class RoleManagementService {

	@Autowired
	private RoleRepository roleRepository;

	@Autowired
	private UserRepository userRepository;

	/**
	 * Create a new role
	 */
	public Role createRole(String roleName, String description) {
		Role role = new Role(roleName, description);
		return roleRepository.save(role);
	}

	/**
	 * Get all roles
	 */
	public List<Role> getAllRoles() {
		return roleRepository.findAll();
	}

	/**
	 * Get role by name
	 */
	public Role getRoleByName(String roleName) {
		return roleRepository.findByRoleName(roleName);
	}

	/**
	 * Get role by ID
	 */
	public Optional<Role> getRoleById(Long roleId) {
		return roleRepository.findById(roleId);
	}

	/**
	 * Update role
	 */
	public Role updateRole(Long roleId, String roleName, String description) {
		Optional<Role> optionalRole = roleRepository.findById(roleId);
		if (optionalRole.isPresent()) {
			Role role = optionalRole.get();
			role.setRoleName(roleName);
			role.setDescription(description);
			return roleRepository.save(role);
		}
		throw new RuntimeException("Role not found with ID: " + roleId);
	}

	/**
	 * Delete role
	 */
	public void deleteRole(Long roleId) {
		roleRepository.deleteById(roleId);
	}

	/**
	 * Assign role to user
	 */
	public User assignRoleToUser(Long userId, Long roleId) {
		Optional<User> optionalUser = userRepository.findById(userId);
		Optional<Role> optionalRole = roleRepository.findById(roleId);

		if (!optionalUser.isPresent()) {
			throw new RuntimeException("User not found with ID: " + userId);
		}

		if (!optionalRole.isPresent()) {
			throw new RuntimeException("Role not found with ID: " + roleId);
		}

		User user = optionalUser.get();
		Role role = optionalRole.get();
		user.getRoles().add(role);
		return userRepository.save(user);
	}

	/**
	 * Assign multiple roles to user
	 */
	public User assignRolesToUser(Long userId, List<Long> roleIds) {
		Optional<User> optionalUser = userRepository.findById(userId);

		if (!optionalUser.isPresent()) {
			throw new RuntimeException("User not found with ID: " + userId);
		}

		User user = optionalUser.get();
		Set<Role> roles = new HashSet<>();

		for (Long roleId : roleIds) {
			Optional<Role> optionalRole = roleRepository.findById(roleId);
			if (optionalRole.isPresent()) {
				roles.add(optionalRole.get());
			}
		}

		user.setRoles(roles);
		return userRepository.save(user);
	}

	/**
	 * Remove role from user
	 */
	public User removeRoleFromUser(Long userId, Long roleId) {
		Optional<User> optionalUser = userRepository.findById(userId);
		Optional<Role> optionalRole = roleRepository.findById(roleId);

		if (!optionalUser.isPresent()) {
			throw new RuntimeException("User not found with ID: " + userId);
		}

		if (!optionalRole.isPresent()) {
			throw new RuntimeException("Role not found with ID: " + roleId);
		}

		User user = optionalUser.get();
		Role role = optionalRole.get();
		user.getRoles().remove(role);
		return userRepository.save(user);
	}

	/**
	 * Get all users with a specific role
	 */
	public List<User> getUsersByRole(String roleName) {
		Role role = roleRepository.findByRoleName(roleName);
		if (role == null) {
			throw new RuntimeException("Role not found: " + roleName);
		}

		List<User> users = userRepository.findAll();
		return users.stream().filter(user -> user.getRoles().contains(role)).toList();
	}

	/**
	 * Check if user has a specific role
	 */
	public boolean userHasRole(Long userId, String roleName) {
		Optional<User> optionalUser = userRepository.findById(userId);
		if (!optionalUser.isPresent()) {
			throw new RuntimeException("User not found with ID: " + userId);
		}

		User user = optionalUser.get();
		return user.getRoles().stream().anyMatch(role -> role.getRoleName().equals(roleName));
	}
}
