import 'package:flutter/material.dart';
import 'package:koffi_unoesc/src/controllers/app_controller.dart';
import 'package:koffi_unoesc/src/ui/components/koffi_theme_data.dart';
import 'package:koffi_unoesc/src/view/initial.dart';
import 'package:koffi_unoesc/src/view/login.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance, 
      builder: (context, child) {
        return  MaterialApp(
          title: "Koffi Unoesc",
          theme: koffiTheme.data,
          initialRoute: "/",
          routes: {
            "/": (context) => const InitialScreen(),
          },
        );
      },
    );
  }
}