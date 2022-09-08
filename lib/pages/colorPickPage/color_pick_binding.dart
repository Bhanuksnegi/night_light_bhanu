import 'package:get/get.dart';
import 'package:night_light/pages/colorPickPage/color_pick_controller.dart';

class ColorPickPageBiding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(ColorPickPageController.new);
  }
}