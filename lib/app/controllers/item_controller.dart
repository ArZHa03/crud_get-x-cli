import 'package:get/get.dart';

import '../data/models/item_model.dart';

class ItemController extends GetxController {
  RxList<ItemModel> items = List<ItemModel>.empty().obs;

  void createItem(ItemModel item) => items.add(item);
  void updateItem(int id, ItemModel item) => items[items.indexWhere((element) => element.number == id)] = item;
  void deleteItem(int id) => items.removeWhere((element) => element.number == id);
}
