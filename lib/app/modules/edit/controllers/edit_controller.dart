import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/item_controller.dart';
import '../../../data/models/item_model.dart';

class EditController extends GetxController {
  final ItemController _itemController = Get.find<ItemController>();
  final TextEditingController name = TextEditingController();

  ItemModel findById(int number) => _itemController.items.firstWhere((element) => element.number == number);

  void editItem(int number) {
    if (name.text.isEmpty || name.text == '') {
      _callSnackBar();
    } else {
      _saveEdit(number);
      Get.back();
    }
  }

  void _callSnackBar() {
    if (!Get.isSnackbarOpen) Get.snackbar("Error", "Field nama harus diisi.");
  }

  void _saveEdit(int number) {
    final ItemModel data = ItemModel(
      number: number,
      name: name.text,
      dateModified: DateTime.now().toIso8601String(),
    );

    _itemController.updateItem(number, data);
  }
}
