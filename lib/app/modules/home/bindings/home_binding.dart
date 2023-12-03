import 'package:get/get.dart';

import '../../../controllers/item_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      ItemController(),
      permanent: true,
    );
  }
}
