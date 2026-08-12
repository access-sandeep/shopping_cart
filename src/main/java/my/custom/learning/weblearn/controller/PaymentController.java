package my.custom.learning.weblearn.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.stripe.Stripe;
import com.stripe.exception.StripeException;
import com.stripe.model.PaymentIntent;
import com.stripe.param.PaymentIntentCreateParams;

import jakarta.validation.Valid;
import my.custom.learning.weblearn.dto.PaymentIntentRequest;
import my.custom.learning.weblearn.dto.PaymentIntentResponse;

@RestController
@RequestMapping("/payments")
public class PaymentController {
	@Value("${stripe.secret-key}")
	private String stripeSecretKey;

	@PostMapping("/create-intent")
	public ResponseEntity<PaymentIntentResponse> createIntent(@RequestBody @Valid PaymentIntentRequest request)
			throws StripeException {
		Stripe.apiKey = stripeSecretKey;
		PaymentIntentCreateParams params = PaymentIntentCreateParams.builder().setAmount(request.amount())
				.setCurrency(request.currency()).setAutomaticPaymentMethods(
						PaymentIntentCreateParams.AutomaticPaymentMethods.builder().setEnabled(true).build())
				.build();
		PaymentIntent intent = PaymentIntent.create(params);
		return ResponseEntity.ok(new PaymentIntentResponse(intent.getClientSecret()));
	}
}
