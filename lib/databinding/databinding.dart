
import 'package:demo/controller/controller.dart';
import 'package:get/get.dart';

class DataBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => DataController());
  }

}