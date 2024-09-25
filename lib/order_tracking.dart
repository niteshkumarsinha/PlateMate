class OrderTrackingScreen extends StatelessWidget {
  final LatLng restaurantLocation;
  final LatLng userLocation;

  OrderTrackingScreen({required this.restaurantLocation, required this.userLocation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Track Your Order')),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: userLocation,
          zoom: 12.0,
        ),
        markers: {
          Marker(markerId: MarkerId('restaurant'), position: restaurantLocation),
          Marker(markerId: MarkerId('user'), position: userLocation),
        },
      ),
    );
  }
}