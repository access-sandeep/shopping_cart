package my.custom.learning.weblearn.exceptions;

import java.time.LocalDateTime;

public class ErrorDetails {
	private LocalDateTime errorLogTime;
	private String message;
	private String details;

	public ErrorDetails(LocalDateTime errorLogTime, String message, String details) {
		super();
		this.errorLogTime = errorLogTime;
		this.message = message;
		this.details = details;
	}

	public LocalDateTime getErrorLogTime() {
		return errorLogTime;
	}

	public String getMessage() {
		return message;
	}

	public String getDetails() {
		return details;
	}
}
