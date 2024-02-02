import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/core/midleware/auth_middle_ware.dart';
import 'package:getx_project/view/screens/counting.dart';
import 'package:getx_project/view/screens/home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/services/settingServices.dart';

SharedPreferences? shared2;
SharedPreferences? sharedPref;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DartPluginRegistrant.ensureInitialized();

  await initServices();
  runApp(const CounterApp());
}

Future initServices() async {
  await Get.putAsync(() => SettingServices().init());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      getPages: [
        GetPage(
          name: '/',
          page: () => MyHomePage(),
          middlewares: [AuthMiddleware()],
        ),
        GetPage(
          name: '/counting',
          page: () => Counting(),

        ),
      ],
    );
  }
}
