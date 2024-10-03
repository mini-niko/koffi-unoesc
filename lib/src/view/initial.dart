import 'package:flutter/material.dart';
import 'package:koffi_unoesc/src/ui/components/custom_button.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 128),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Image.asset(
                  "assets/images/logo.png", 
                  width: 170,
                ),
                const SizedBox(height: 16,),
                const Text(
                  "Koffi",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w900
                  ),
                ),
              ],
            ),
            const Column(
              children: [
                SizedBox(height: 128,),
                CustomButton(title: "Entrar", fontSize: 24),
                SizedBox(height: 32),
                CustomButton(title: "Registrar", fontSize: 24),
              ],
            )
          ],
        ),
      ),
    );
  }
}