import 'package:dolistku/app/modules/home/components/todo_items.dart';
import 'package:dolistku/app/modules/home/controllers/home_controller.dart';
import 'package:dolistku/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align text to the start
          children: [
            Align(
              alignment: const Alignment(0.9, 0),
              child: TextButton.icon(
                  onPressed: controller.onProfile,
                  label: const Text(
                    'Profile',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: const BorderSide(width: 1.0)// Add border color
                    ),
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent, // Remove shadow
                  ),
                ),
            ),
            const Text(
              'MyTodolist',
              style: TextStyle(
                fontSize: 25, // Adjust size as needed
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Text(
              'Rencanakan untuk hari-hari mu!',
              style: TextStyle(
                fontSize: 20, // Adjust size as needed
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Text(
              'Hai, Buatlah list rencana kamu hari ini',
              style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 150, 150, 150),
              ),
            ),
            const SizedBox(height: 16), // Add some space between text and list
            Expanded(
              child: Obx(
                () => ListView(
                  children: controller.notes.map((note) {
                    return todoItem(
                      title: note.title,
                      schedule: note.schedule,
                      onTap: () => Get.toNamed(Routes.LISTDETAIL, arguments: note),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 80.0,
        height: 80.0,
        child: FloatingActionButton(
          onPressed: controller.onAddList,
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 36.0,
          ),
          backgroundColor: Colors.black,
          shape: const CircleBorder(),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
