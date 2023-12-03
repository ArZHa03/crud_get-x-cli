import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/add_controller.dart';

class AddView extends GetView<AddController> {
  const AddView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Item'),
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
              onEditingComplete: () => controller.addItem(),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => controller.addItem(),
              child: const Text("Tambah Item"),
            ),
          ],
        ),
      ),
    );
  }
}
