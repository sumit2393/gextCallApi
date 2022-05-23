
import 'package:demo/data.dart';
import 'package:demo/databinding/databinding.dart';
import 'package:get/get.dart';

class Routes{

  static final routes = [

    GetPage(
      name: '/data',
      page: () => Data(),
      binding: DataBinding(),
    ),


  ];
}
