import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/signin_controller.dart';

class SigninView extends GetView<SigninController> {
  const SigninView({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'lib/assets/logo.png',
                height: 80,
              ),
              const SizedBox(height: 10,),
              const Text(
                'Dolistku',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: controller.usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              const SizedBox(height: 20,),// Adjust this value to move the button further down
              TextField(
                obscureText: true,
                controller: controller.passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              const SizedBox(height: 40,),// Adjust this value to move the button further down
              TextButton.icon(
                onPressed: controller.signIn,
                label: const Text(
                  'Masuk',
                  style: TextStyle(color: Colors.white),
                ),
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 64.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),// Add border color
                  ),
                  backgroundColor: Colors.black,
                  shadowColor: Colors.transparent, // Remove shadow
                ),
              ),
              const SizedBox(height: 5,),// Adjust this value to move the button further down
              TextButton.icon(
                onPressed: controller.onSignout,
                label: const Text(
                  'belum mempunyai akun?',
                  style: TextStyle(color: Colors.black, fontSize: 13),
                ),
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 64.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),// Add border color
                  ),
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent, // Remove shadow
                ),
              ),
              const SizedBox(height: 80,),
              const Text(
                "created by",
                style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Iqbal Fr dan Demario",
                style: TextStyle(color: Colors.black, fontSize: 10),
              )
            ],
          ),
        ),
      ),
    );
  }
}
