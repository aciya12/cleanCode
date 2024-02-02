import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_project/core/services/settingServices.dart';

class CustomButtonHome extends StatelessWidget {
  const CustomButtonHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SettingServices controller = Get.find();
    return InkWell(
      onTap: () {
        Get.toNamed('/counting');
        controller.sharedPref!.setString("log", "1");
      },
      child: const CircleAvatar(
          radius: 80,
          child: Text("Start Counting",
              style: TextStyle(
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold,
                  fontSize: 18))),
    );
  }
}
