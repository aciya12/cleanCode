import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/services/settingServices.dart';
import '../custom_widjets/custom_button_home.dart';

class MyHomePage extends GetView<SettingServices> {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'homePage',
          style: TextStyle(color: Colors.indigo),
        ),
      ),
      body: const Center(
        child: CustomButtonHome(),
      ),
    );
  }
}
