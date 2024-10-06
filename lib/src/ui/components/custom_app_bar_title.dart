import 'package:flutter/material.dart';

class CustomAppBarTitle extends StatelessWidget {
  final String title;

  const CustomAppBarTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () => Navigator.pushReplacementNamed(context, "/products"),
          child: const Icon(Icons.arrow_back),
        ),
        const SizedBox(width: 16),
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
