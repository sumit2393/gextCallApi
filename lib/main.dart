import 'package:demo/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        initialRoute: '/data',
        getPages: Routes.routes
    );
  }
}