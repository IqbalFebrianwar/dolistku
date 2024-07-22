import 'package:dolistku/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/listdetail_controller.dart';

class ListdetailView extends GetView<ListdetailController> {
  const ListdetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(''),
          centerTitle: true,
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {
                Get.toNamed(Routes.EDITLIST, arguments: controller.args);
              },
            ),
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: controller.delete,
            ),
          ],
        ),
        body: Obx(
          () => Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  controller.title.value,
                  style: TextStyle(fontSize: 30),
                ),
                Text(
                  controller.date.value,
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                SizedBox(height: 20,),
                Text(controller.description.value),
              ],
            ),
          ),
        ));
  }
}
