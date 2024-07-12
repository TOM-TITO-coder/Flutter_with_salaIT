import 'package:flutter/material.dart';
import 'package:flutter_getx_for_beginner/app/modules/auth/controllers/login_controller.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  // controller field
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // dependencies injection
  final _controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Welcome to Login",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              TextField(
                controller: usernameController,
                decoration: const InputDecoration(hintText: "Username"),
              ),
              const SizedBox(
                height: 28,
              ),
              TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  hintText: "Password",
                ),
                obscureText: true,
              ),
              const SizedBox(
                height: 28,
              ),
              TextButton(
                onPressed: _controller.login,
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
