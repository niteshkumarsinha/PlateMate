class PaymentService {
  Future<void> makePayment() async {
    try {
      // Request a PaymentIntent from your backend server
      final response = await http.post('https://your-server/create-payment-intent');
      final paymentIntent = jsonDecode(response.body);

      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret: paymentIntent['client_secret'],
          merchantDisplayName: 'Food Delivery',
        ),
      );

      await Stripe.instance.presentPaymentSheet();
    } catch (e) {
      print(e.toString());
    }
  }
}