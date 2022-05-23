import 'package:demo/provider/provider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
class DataController extends GetxController with StateMixin<List<dynamic>>{

  @override
  void onInit() {
    super.onInit();
    Provider().getUser().then((value) {
      change(value, status: RxStatus.success());
    },onError: (error){
      change(null,status: RxStatus.error(error.toString()));
    });
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}