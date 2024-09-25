class CheckoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartModel>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Checkout')),
      body: ListView.builder(
        itemCount: cart.items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cart.items[index].name),
            trailing: Text("\$${cart.items[index].price.toString()}"),
          );
        },
      ),
      bottomNavigationBar: ElevatedButton(
        child: Text('Place Order'),
        onPressed: () {
          // Payment gateway integration
        },
      ),
    );
  }
}