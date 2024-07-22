import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/addlist_controller.dart';

class AddlistView extends GetView<AddlistController> {
  const AddlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(''),
        centerTitle: false,
        elevation: 0,
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () => Get.back(closeOverlays: true, canPop: true)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Membuat Rencana',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Masukkan list rencana yang ingin kamu inginkan',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 32),
            TextField(
              controller: controller.nameController,
              decoration: InputDecoration(
                labelText: 'Judul',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
          onPressed: () => controller.selectDate(context),
          child: const Text('Pick Date-Time'),
        ),
            const SizedBox(height: 16),
            TextField(
              controller: controller.descriptionController,
              decoration: InputDecoration(
                labelText: 'Deskripsi (Optional)',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 32),
            Align(
              alignment: const Alignment(0, 0),
              child: TextButton.icon(
                  onPressed: controller.onSubmit,
                  label: const Text(
                    'Simpan',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 100.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),// Add border color
                    ),
                    backgroundColor: Colors.black,
                    shadowColor: Colors.transparent, // Remove shadow
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
