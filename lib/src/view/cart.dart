import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:koffi_unoesc/src/controllers/cart_controller.dart';
import 'package:koffi_unoesc/src/ui/components/custom_app_bar_title.dart';
import 'package:koffi_unoesc/src/ui/theme/colors.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  static CartController cartController = CartController.instance;
  Payment? _payment;

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
        title: const CustomAppBarTitle(title: "Carrinho"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: ListView(
          clipBehavior: Clip.none,
          children: [
            Card(
              color: colors["secondary_light"],
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Itens",
                          style: theme.primaryTextTheme.bodyLarge,
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      child: Column(
                        children: cartController.getAll().map((item) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 2),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "${item.name}",
                                  style: theme.primaryTextTheme.bodyMedium,
                                ),
                                Text(
                                  "R\$${item.price}",
                                  style: theme.primaryTextTheme.bodyMedium,
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total",
                            style: theme.primaryTextTheme.bodyLarge,
                          ),
                          Text(
                            "R\$${cartController.totalPrice()}",
                            style: theme.primaryTextTheme.bodyLarge,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              color: colors["secondary_light"],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Endereço",
                          style: theme.primaryTextTheme.bodyLarge,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Rua XXXXX",
                                style: theme.primaryTextTheme.bodyMedium,
                              ),
                              Text(
                                "Bairro XXXXX",
                                style: theme.primaryTextTheme.bodyMedium,
                              ),
                              Text(
                                "Cidade/UF",
                                style: theme.primaryTextTheme.bodyMedium,
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: colors["secondary"],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Icon(
                                Icons.edit,
                                color: colors["white"],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              color: colors["secondary_light"],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Pagamentos",
                          style: theme.primaryTextTheme.bodyLarge,
                        )
                      ],
                    ),
                    ListTile(
                      title: const Text('Dinheiro'),
                      leading: Radio(
                        fillColor: WidgetStatePropertyAll(colors["secondary"]),
                        value: Payment.money,
                        groupValue: _payment,
                        onChanged: (Payment? value) {
                          setState(() {
                            _payment = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Pix'),
                      leading: Radio(
                        fillColor: WidgetStatePropertyAll(colors["secondary"]),
                        value: Payment.pix,
                        groupValue: _payment,
                        onChanged: (Payment? value) {
                          setState(() {
                            _payment = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Cartão de crédito'),
                      leading: Radio(
                        fillColor: WidgetStatePropertyAll(colors["secondary"]),
                        value: Payment.creditCard,
                        groupValue: _payment,
                        onChanged: (Payment? value) {
                          setState(() {
                            _payment = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Cartão de débito'),
                      leading: Radio(
                        fillColor: WidgetStatePropertyAll(colors["secondary"]),
                        value: Payment.debitCard,
                        groupValue: _payment,
                        onChanged: (Payment? value) {
                          setState(() {
                            _payment = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum Payment { pix, debitCard, creditCard, money }
