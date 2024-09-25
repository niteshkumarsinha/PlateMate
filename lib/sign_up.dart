class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final AuthService _authService = AuthService();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up")),
      body: Column(
        children: [
          TextField(controller: _emailController, decoration: InputDecoration(hintText: "Email")),
          TextField(controller: _passwordController, decoration: InputDecoration(hintText: "Password")),
          ElevatedButton(
            child: Text("Sign Up"),
            onPressed: () async {
              User? user = await _authService.signUp(_emailController.text, _passwordController.text);
              if (user != null) {
                Navigator.pushReplacementNamed(context, '/home');
              }
            },
          ),
        ],
      ),
    );
  }
}