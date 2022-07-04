import 'package:fifine/utils/google_sign_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Center(
        child: GoogleSignInButton(),
      ),
    );
  }
}

class GoogleSignInButton extends StatelessWidget {
  GoogleSignInButton({
    Key? key,
  }) : super(key: key);

  final controller = Get.put(GoogleSignController());

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
        onPressed: () async {
          final logged = await controller.login();
          if (logged) {
            Navigator.of(context).pushReplacementNamed('/overview');
          }
        },
        icon:
            Image.asset('assets/images/google_logo.png', height: 32, width: 32),
        label: const Text('Entrar com Google'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black);
  }
}
