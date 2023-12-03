import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/item_controller.dart';
import '../../../routes/app_pages.dart';
import 'widgets/item_view.dart';

class HomeView extends GetView<ItemController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Semua Item'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => Get.toNamed(Routes.add),
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Obx(
        () => controller.items.isEmpty
            ? const Center(
                child: Text("Tidak ada item"),
              )
            : ListView.builder(
                itemCount: controller.items.length,
                itemBuilder: (context, i) {
                  final data = controller.items[i];
                  return ItemView(data);
                },
              ),
      ),
    );
  }
}
