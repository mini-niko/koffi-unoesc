import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 32),
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Sair"),
              subtitle: const Text("Voltar para a tela de início"),
              onTap: () {
                Navigator.pushReplacementNamed(context, "/");
              },
            ),
          ],
        ),
      ),
    );
  }
}
