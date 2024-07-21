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
      ),
      body: const Center(
        child: Text(
          'ListdetailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
