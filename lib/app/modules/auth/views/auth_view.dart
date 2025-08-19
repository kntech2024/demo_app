import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/routes/app_pages.dart';
import '../controllers/auth_controller.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(title: const Text('AuthView'), centerTitle: true),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(controller.name, style: TextStyle(fontSize: 20)),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(
                  Routes.HOME,
                  arguments: {"name": "Lono.......", "age": "20"},
                );
              },
              child: Text('Go home!'),
            ),
          ],
        ),
      ),
    );
  }
}
