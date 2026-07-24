package my.custom.learning.weblearn.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class SecurityConfig {

	@Bean
	SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
		http
			.csrf(csrf -> csrf.disable()) // Disable CSRF for testing (enable in production)
			.authorizeHttpRequests(authz -> authz
				.requestMatchers("/login").permitAll() // Allow /login without authentication
				.requestMatchers("/v3/api-docs", "/swagger-ui.html", "/swagger-ui/**", "/v3/api-docs/**").permitAll() // Allow Swagger UI
				.anyRequest().authenticated() // All other requests require authentication
			)
			.httpBasic(basic -> {}); // Enable HTTP Basic authentication
		
		return http.build();
	}
}
