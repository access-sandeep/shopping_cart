package my.custom.learning.weblearn.exceptions;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(code = HttpStatus.NOT_FOUND)
public class AddressNotFoundException extends RuntimeException {
	private static final long serialVersionUID = 1L;

	private String message;
	private String trace;

	public AddressNotFoundException(String message, String trace) {
		super();
		this.message = message;
		this.trace = trace;
	}

	@Override
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getTrace() {
		return trace;
	}

	public void setTrace(String trace) {
		this.trace = trace;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "AddressNotFoundException [message=" + message + ", trace=" + trace + "]";
	}

}
