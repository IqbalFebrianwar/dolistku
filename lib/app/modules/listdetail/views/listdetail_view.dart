import 'package:dolistku/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/listdetail_controller.dart';

class ListdetailView extends GetView<ListdetailController> {
  const ListdetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListdetailView'),
        centerTitle: true,
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
        () => Column(
          children: [
            Text(controller.title.value),
            Text(controller.description.value),
            Text(controller.date.value),
          ],
        ),
      )
    );
  }
}
