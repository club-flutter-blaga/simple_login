import 'package:flutter/material.dart';
import 'package:simple_login/services/authentication_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  String? error;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Email'),
              const TextField(),
              const SizedBox(height: 16),
              const Text('Password'),
              const TextField(
                obscureText: true,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    error = AuthenticationService.instance
                        .login(email.text, password.text);
                  });
                },
                child: const Text('Log in'),
              ),
              if (error != null) Text('ERROR: $error'),
            ],
          ),
        ),
      ),
    );
  }
}
