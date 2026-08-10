package my.custom.learning.weblearn.security;

import java.util.Collection;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import io.jsonwebtoken.io.IOException;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import my.custom.learning.weblearn.service.JwtService;

@Component
public class JwtAuthenticationFilter extends OncePerRequestFilter {
	@Autowired
	JwtService jwtService;

	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
			throws ServletException, IOException, java.io.IOException {

		String authHeader = request.getHeader("Authorization");

		if (authHeader != null && authHeader.startsWith("Bearer ")) {

			String token = authHeader.substring(7).trim();

			// Some clients (or misconfigured code) send the token wrapped in quotes: "ey...".
			// Be tolerant and remove surrounding quotes if present so a valid token isn't rejected.
			if (token.length() >= 2 && token.startsWith("\"") && token.endsWith("\"")) {
				token = token.substring(1, token.length() - 1);
			}

			if (jwtService.isValid(token)) {

				String username = jwtService.extractUsername(token);
				Collection<String> authorities = jwtService.extractAuthorities(token);

				// Convert string authorities to GrantedAuthority objects
				Collection<GrantedAuthority> grantedAuthorities = authorities.stream()
						.map(SimpleGrantedAuthority::new).collect(Collectors.toList());

				UsernamePasswordAuthenticationToken authentication = new UsernamePasswordAuthenticationToken(username,
						null, grantedAuthorities);

				SecurityContextHolder.getContext().setAuthentication(authentication);
			}
		}

		filterChain.doFilter(request, response);
	}
}
