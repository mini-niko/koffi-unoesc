import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:koffi_unoesc/src/ui/theme/colors.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Scaffold(
      drawer: Drawer(
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
      ),
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Nossos Produtos",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, "/products/hot_coffees");
            },
            child: Card(
              color: colors["secondary"],
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Cafés quentes",
                      style: theme.primaryTextTheme.bodyLarge,
                    ),
                    const Icon(Icons.arrow_forward)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
