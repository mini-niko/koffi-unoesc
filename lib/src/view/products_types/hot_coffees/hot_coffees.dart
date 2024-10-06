import 'package:flutter/material.dart';
import 'package:koffi_unoesc/src/controllers/cart_controller.dart';
import 'package:koffi_unoesc/src/controllers/items_controllers/hot_coffee_controller.dart';
import 'package:koffi_unoesc/src/models/item_model.dart';
import 'package:koffi_unoesc/src/ui/components/custom_app_bar_title.dart';
import 'package:koffi_unoesc/src/ui/components/custom_button.dart';
import 'package:koffi_unoesc/src/ui/components/custom_drawer.dart';
import 'package:koffi_unoesc/src/ui/theme/colors.dart';

class HotCoffeesScreen extends StatefulWidget {
  const HotCoffeesScreen({super.key});

  @override
  State<HotCoffeesScreen> createState() => _HotCoffeesScreenState();
}

class _HotCoffeesScreenState extends State<HotCoffeesScreen> {
  final controller = HotCoffeeController();

  final cartController = CartController.instance;
  double price = 0.0;

  _success(context) {
    return ListView.builder(
      itemCount: controller.items.length,
      itemBuilder: (_, index) {
        var item = controller.items[index];
        return Card(
          color: colors["secondary_light"],
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Stack(
              children: [
                Row(
                  children: [
                    Image.network(item.image),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name,
                          style: Theme.of(context).primaryTextTheme.bodyLarge,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "R\$${item.price}",
                          style: Theme.of(context).primaryTextTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  bottom: 4,
                  right: 4,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        cartController.add(item);
                        price = cartController.totalPrice();
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: colors["secondary"],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Icon(
                          Icons.add,
                          color: colors["white"],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  _loading(context) {
    return Center(
      child: CircularProgressIndicator(
        color: colors["secondary"],
      ),
    );
  }

  _error(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Uh oh! Algo deu errado =(",
            style: Theme.of(context).primaryTextTheme.bodyLarge,
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () => controller.start(),
            style: const ButtonStyle(
              padding: WidgetStatePropertyAll(EdgeInsets.all(15)),
            ),
            child: Text(
              "Tente Novamente",
              style: Theme.of(context).primaryTextTheme.bodyLarge,
            ),
          )
        ],
      ),
    );
  }

  stateManagement(context, state) {
    switch (state) {
      case ItemState.start:
        return Container();
      case ItemState.loading:
        return _loading(context);
      case ItemState.success:
        return _success(context);
      case ItemState.error:
        return _error(context);
    }
  }

  @override
  void initState() {
    super.initState();
    price = cartController.totalPrice();
    controller.start();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: const CustomAppBarTitle(title: "Cafés Quentes"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: AnimatedBuilder(
            animation: controller.state,
            builder: (_, __) {
              return stateManagement(context, controller.state.value);
            }),
      ),
      bottomNavigationBar: BottomAppBar(
        color: colors["primary_light"],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              "${cartController.length()} itens / R\$${price}",
              style: theme.primaryTextTheme.bodyLarge,
            ),
            ElevatedButton(
              style: const ButtonStyle(
                  padding: WidgetStatePropertyAll(EdgeInsets.all(8))),
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/cart");
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_cart,
                    color: colors["black"],
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Carrinho",
                    style: theme.primaryTextTheme.bodyLarge,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
