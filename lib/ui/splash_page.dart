import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:xno_taskapp/helpers/app_constants.dart';
import 'package:xno_taskapp/helpers/layout_helper.dart';
import 'package:xno_taskapp/helpers/text_styles.dart';
import 'package:xno_taskapp/ui/home_page.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () async {
      LayoutHelper.instance.taskList = await Hive.openBox(AppConstants.taskBox);
      LayoutHelper.instance.userList = await Hive.openBox(AppConstants.userBox);
      LayoutHelper.instance.labelList =
          await Hive.openBox(AppConstants.labelBox);

      Get.to(HomePage());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    LayoutHelper.instance.width = Get.width;
    LayoutHelper.instance.height = Get.height;
    LayoutHelper.instance.fontSize = Get.height > 700 ? 16 : 15;
    return Scaffold(
      backgroundColor: AppConstants.appBackgroundColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/logo-awal.png',
              width: Get.width * 0.75,
            ),
            const SizedBox(height: 10),
            Text(
              "Collage Up",
              style: largeBoldTxt,
            ),
          ],
        ),
      ),
    );
  }
}
