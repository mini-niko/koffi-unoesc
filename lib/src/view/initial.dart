import 'package:flutter/material.dart';
import 'package:koffi_unoesc/src/ui/components/custom_button.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 48),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  width: 170,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Koffi",
                  style: theme.primaryTextTheme.titleLarge,
                ),
              ],
            ),
            Column(
              children: [
                const SizedBox(height: 128),
                CustomButton(
                  title: "Entrar",
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, "/login");
                  },
                ),
                const SizedBox(height: 32),
                CustomButton(
                  title: "Registrar",
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, "/register");
                  },
                ),
              ],
            )
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
