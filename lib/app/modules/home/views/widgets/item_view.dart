import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controllers/item_controller.dart';
import '../../../../data/models/item_model.dart';
import '../../../../routes/app_pages.dart';

class ItemView extends GetView<ItemController> {
  const ItemView(this.data, {super.key});
  final ItemModel data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Get.toNamed(
        Routes.edit,
        arguments: data.number!,
      ),
      leading: const CircleAvatar(),
      title: Text(data.name!),
      subtitle: Text(data.dateModified!),
      trailing: IconButton(
        icon: const Icon(Icons.delete_forever),
        onPressed: () => controller.deleteItem(data.number!),
      ),
    );
  }
}
