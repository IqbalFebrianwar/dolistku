import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<dynamic> dialog({
  required String title,
  Function()? onPressed
}) {
    return showDialog(
      context: Get.overlayContext!,
      builder: (context) => AlertDialog(
        title: Text(title),
        actions: [
          MaterialButton(
            onPressed: onPressed ?? () => Get.back(),
            child: const Text("oke"),
          )
        ],
      ),
    );
  }