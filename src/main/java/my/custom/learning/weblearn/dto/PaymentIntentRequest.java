package my.custom.learning.weblearn.dto;

public record PaymentIntentRequest(long user_id, long shipping_address_id, Long coupon_id, long total_amount, String currency) {

	@Override
	public String toString() {
		return "PaymentIntentRequest [user_id=" + user_id + ", shipping_address_id=" + shipping_address_id
				+ ", coupon_id=" + coupon_id + ", total_amount=" + total_amount + ", currency=" + currency + "]";
	}
	
}
