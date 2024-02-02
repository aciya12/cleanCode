import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/view/custom_widjets/custom_counter_button.dart';
import '../../controller/counter_page_controller.dart';

class Counting extends StatelessWidget {
  Counting({Key? key}) : super(key: key);
  CountingController controller =
      Get.put(CountingController(), permanent: true);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text("Clear"),
        onPressed: () {
          controller.clearing();
        },
      ),
      appBar: AppBar(
        title: const Text("CounterApp"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CountingController>(
              init: Get.put(CountingController(), permanent: true),
              builder: (controller) => CircleAvatar(
                  radius: 70,
                  child: Text(
                    '${controller.count}',
                    style: const TextStyle(fontSize: 38),
                  )),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomCounterButton(
                  onPressed: () {
                    controller.increment();
                  },
                  text: 'increment',
                  operation: '+',
                ),
                SizedBox(
                  width: 10,
                ),
                CustomCounterButton(
                  onPressed: () {
                    controller.decrement();
                  },
                  text: "decrement",
                  operation: '-',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
