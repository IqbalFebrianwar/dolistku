import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/signin_controller.dart';

class SigninView extends GetView<SigninController> {
  const SigninView({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'lib/assets/logo.png',
                height: 150,
              ),
              const SizedBox(height: 150), // Adjust this value to move the button further down
              TextButton.icon(
                onPressed: controller.login,
                icon: Image.asset(
                  'lib/assets/google.png',
                  height: 24,
                  width: 24,
                ),
                label: const Text(
                  'Sign in with Google',
                  style: TextStyle(color: Colors.black),
                ),
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    side: const BorderSide(color: Colors.black, width: 1.0), // Add border color
                  ),
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent, // Remove shadow
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
