package my.custom.learning.weblearn.dto;

public record PaymentIntentRequest(long amount, String currency) {

	@Override
	public String toString() {
		return "PaymentIntentRequest [amount=" + amount + ", currency=" + currency + "]";
	}
	
}
