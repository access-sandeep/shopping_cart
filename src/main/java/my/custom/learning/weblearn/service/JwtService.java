package my.custom.learning.weblearn.service;

import java.nio.charset.StandardCharsets;
import java.sql.Date;

import javax.crypto.SecretKey;

import org.springframework.stereotype.Service;

import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.security.Keys;
import my.custom.learning.weblearn.AppConstants;

@Service
public class JwtService {
	private static final String SECRET = AppConstants.SECRET;

	private final SecretKey key = Keys.hmacShaKeyFor(SECRET.getBytes(StandardCharsets.UTF_8));

	public String generateToken(String email) {

		return Jwts.builder().subject(email).issuedAt(new Date(System.currentTimeMillis()))
				.expiration(new Date(System.currentTimeMillis() + 86400000)).signWith(key).compact();
	}

	public String extractUsername(String token) {

		return Jwts.parser().verifyWith(key).build().parseSignedClaims(token).getPayload().getSubject();
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
