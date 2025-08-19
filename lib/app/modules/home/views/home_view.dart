import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/home/widgets/home_widget.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(title: Text('HomeView'), centerTitle: true),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Get.arguments['name'] ?? "...",
                style: HomeWidget.textStyle(),
              ),
              SizedBox(height: 10),
              Text(
                Get.arguments['age'] ?? "...",
                style: HomeWidget.textStyle(),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      controller.increment2();
                    },
                    child: Icon(Icons.remove_circle, size: 80),
                  ),
                  SizedBox(width: 30),
                  Obx(
                    () => Text(
                      controller.count.value.toString(),
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  SizedBox(width: 30),
                  ElevatedButton(
                    onPressed: () {
                      controller.increment();
                    },
                    child: Icon(Icons.add_circle, size: 80),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
