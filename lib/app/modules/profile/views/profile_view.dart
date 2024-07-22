import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Profil'),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "Hai, ${controller.args.value.name}",
              style: TextStyle(
                fontSize: 20, // Adjust size as needed
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              controller.args.value.username,
              style: TextStyle(
                fontSize: 15, // Adjust size as needed
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment(0, 0),
              child: TextButton.icon(
                onPressed: controller.onlogout,
                label: const Text(
                  'Keluar',
                  style: TextStyle(color: Colors.white),
                ),
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 100.0),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(8.0), // Add border color
                  ),
                  backgroundColor: Colors.black,
                  shadowColor: Colors.transparent, // Remove shadow
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
