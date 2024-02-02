import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_project/core/services/settingServices.dart';

class AuthMiddleware extends GetMiddleware{
  SettingServices controller = Get.find();
  @override
  RouteSettings? redirect(String? route) {
    if(controller.sharedPref.getString("log") != null){
      return RouteSettings(name: "/counting");
    }

  }
}