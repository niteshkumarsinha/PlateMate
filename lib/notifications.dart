FirebaseMessaging messaging = FirebaseMessaging.instance;

messaging.getToken().then((token) {
  print("Firebase Messaging Token: $token");
  // Send token to your backend server to associate with a user
});

FirebaseMessaging.onMessage.listen((RemoteMessage message) {
  print('Received a message while in foreground!');
});