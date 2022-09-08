
import 'package:get/get.dart';

class MultiLavaScreen{
  late String screenName;
  late String screenColor;
  RxBool isSelect = false.obs;

  MultiLavaScreen(this.screenName, this.screenColor, this.isSelect);
}