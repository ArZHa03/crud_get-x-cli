import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/item_controller.dart';
import '../../../data/models/item_model.dart';

class AddController extends GetxController {
  final ItemController _itemController = Get.find<ItemController>();
  final TextEditingController name = TextEditingController();

  void addItem() {
    if (name.text.isEmpty || name.text == '') {
      _callSnackBar();
    } else {
      _saveItem();
      Get.back();
    }
  }

  void _callSnackBar() {
    if (!Get.isSnackbarOpen) Get.snackbar("Error", "Field nama harus diisi.");
  }

  void _saveItem() {
    final data = ItemModel(
      number: _itemController.items.length,
      name: name.text,
      dateModified: DateTime.now().toIso8601String(),
    );

    _itemController.createItem(data);
  }
}
