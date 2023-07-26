import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak_inc_ui_task/helper/route_helper.dart';
import 'package:jiitak_inc_ui_task/until/app_const.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(  Duration(seconds: 3)).then((value) =>Get.offNamed(RouteHelper.getdash()));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SafeArea(
        child: Center(
        child:  Text(AppConstants.APP_NAME)     ),
      ),
    );
  }
}