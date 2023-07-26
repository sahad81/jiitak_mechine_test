

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:jiitak_inc_ui_task/until/app_const.dart';

import 'helper/lazyput.dart' as di;
import 'helper/route_helper.dart';

void main()async {

di.init();


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
       debugShowCheckedModeBanner: false,
      title: AppConstants.APP_NAME,
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        useMaterial3: true,
      ),
  initialRoute: RouteHelper.splash,
     getPages:  RouteHelper.routes,
    );
  }
}

