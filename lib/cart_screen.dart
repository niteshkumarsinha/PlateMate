class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartModel>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Your Cart')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cart.items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(cart.items[index].name),
                  trailing: Text("\$${cart.items[index].price.toString()}"),
                );
              },
            ),
          ),
          Text('Total: \$${cart.totalPrice.toString()}'),
          ElevatedButton(
            child: Text('Proceed to Checkout'),
            onPressed: () {
              Navigator.pushNamed(context, '/checkout');
            },
          ),
        ],
      ),
    );
  }
}