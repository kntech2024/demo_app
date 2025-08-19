import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/auth/bindings/auth_binding.dart';
import 'package:myapp/app/routes/app_pages.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      initialBinding: AuthBinding(),
    );
  }
}
