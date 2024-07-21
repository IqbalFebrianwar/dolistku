import 'package:dolistku/app/modules/home/controllers/home_controller.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
          children: [
            const Text(
              'MyTodolist',
              style: TextStyle(
                fontSize: 24, // Adjust size as needed
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Text(
              'Hai, Buatlah list kamu hari ini',
              style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 150, 150, 150),
              ),
            ),
            const SizedBox(height: 16), // Add some space between text and list
            Expanded(
              child: ListView(
                children: [
                  TodoItem(
                    title: "Sarapan",
                    dateTime: "Jul 20, 2024 at 6:00AM",
                    onTap: () {
                      // Navigasi ke halaman baru
                      Get.toNamed('/sarapan');
                    },
                  ),
                  TodoItem(
                    title: "Mandi",
                    dateTime: "Jul 20, 2024 at 8:00AM",
                    onTap: () {
                      // Navigasi ke halaman baru
                      Get.toNamed('/mandi');
                    },
                  ),
                ],
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

class TodoItem extends StatefulWidget {
  final String title;
  final String dateTime;
  final VoidCallback? onTap;

  const TodoItem({
    required this.title,
    required this.dateTime,
    this.onTap,
    super.key,
  });

  @override
  _TodoItemState createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 16.0),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.dateTime,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Checkbox(
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value ?? false;
                });
              },
              activeColor: Colors.black,
              checkColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
