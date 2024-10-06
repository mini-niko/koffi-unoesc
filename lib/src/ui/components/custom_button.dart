import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final Color? color;

  const CustomButton({
    super.key,
    required this.title,
    this.color,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(color),
      ),
      onPressed: onPressed ?? () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: theme.primaryTextTheme.displayMedium,
          ),
        ],
      ),
    );
  }
}
