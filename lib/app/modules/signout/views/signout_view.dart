import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/signout_controller.dart';

class SignoutView extends GetView<SignoutController> {
  const SignoutView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Daftarkan akun!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Silahkan isi dengan sesuai',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: controller.nameController,
                decoration: InputDecoration(
                  labelText: 'Nama Lengkap',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ), // Adjust this value to move the button further down
              TextField(
                controller: controller.usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ), // Adjust this value to move the button further down
              TextField(
                controller: controller.passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                obscuringCharacter: "_",
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ), // Adjust this value to move the button further down
              TextButton.icon(
                onPressed: controller.onSubmit,
                label: const Text(
                  'Daftar',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 64.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  backgroundColor: Colors.black,
                  shadowColor: Colors.transparent, // Remove shadow
                ),
              ),
              const SizedBox(
                height: 5,
              ), // Adjust this value to move the button further down
              TextButton.icon(
                onPressed: controller.login,
                label: const Text(
                  'sudah mempunyai akun',
                  style: TextStyle(color: Colors.black, fontSize: 13),
                ),
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 64.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent, // Remove shadow
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
