GoogleMap(
  initialCameraPosition: CameraPosition(
    target: LatLng(currentLat, currentLng),
    zoom: 12.0,
  ),
  markers: {
    Marker(
      markerId: MarkerId('restaurant'),
      position: LatLng(restaurantLat, restaurantLng),
    ),
    Marker(
      markerId: MarkerId('user'),
      position: LatLng(userLat, userLng),
    ),
  },
);