import 'package:get/get.dart';
import 'package:night_light/pages/HomePage/home_page_controller.dart';

class HomePageBiding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(HomePageController.new);
  }
}