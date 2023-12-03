import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/edit_controller.dart';

class EditView extends GetView<EditController> {
  const EditView({super.key});

  @override
  Widget build(BuildContext context) {
    final data = controller.findById(Get.arguments);
    controller.name.text = data.name!;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Ubah Item'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            TextField(
              autocorrect: false,
              controller: controller.name,
              decoration: const InputDecoration(
                labelText: "Nama Item",
                hintText: "Masukkan nama item disini ...",
                border: OutlineInputBorder(),
              ),
              onEditingComplete: () => controller.editItem(data.number!),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => controller.editItem(data.number!),
              child: const Text("Ubah Item"),
            ),
          ],
        ),
      ),
    );
  }
}
