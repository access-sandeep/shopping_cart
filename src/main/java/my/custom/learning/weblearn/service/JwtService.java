package my.custom.learning.weblearn.service;

import java.nio.charset.StandardCharsets;
import java.sql.Date;
import java.util.Collection;

import javax.crypto.SecretKey;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.security.Keys;
import my.custom.learning.weblearn.AppConstants;

@Service
public class JwtService {
	private static final String SECRET = AppConstants.SECRET;

	private final SecretKey key = Keys.hmacShaKeyFor(SECRET.getBytes(StandardCharsets.UTF_8));

	// Generate token with user details and authorities
	public String generateToken(UserDetails userDetails) {
		Collection<? extends GrantedAuthority> authorities = userDetails.getAuthorities();
		return Jwts.builder().subject(userDetails.getUsername())
				.claim("authorities", authorities.stream().map(GrantedAuthority::getAuthority).toList())
				.issuedAt(new Date(System.currentTimeMillis()))
				.expiration(new Date(System.currentTimeMillis() + 86400000)).signWith(key).compact();
	}

	// Generate token with email only (backward compatibility)
	public String generateToken(String email) {
		return Jwts.builder().subject(email).issuedAt(new Date(System.currentTimeMillis()))
				.expiration(new Date(System.currentTimeMillis() + 86400000)).signWith(key).compact();
	}

	public String extractUsername(String token) {
		return Jwts.parser().verifyWith(key).build().parseSignedClaims(token).getPayload().getSubject();
	}

	@SuppressWarnings("unchecked")
	public Collection<String> extractAuthorities(String token) {
		Claims claims = Jwts.parser().verifyWith(key).build().parseSignedClaims(token).getPayload();
		return (Collection<String>) claims.get("authorities", Collection.class);
	}

	public boolean isValid(String token) {
		try {
			Jwts.parser().verifyWith(key).build().parseSignedClaims(token);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
}
