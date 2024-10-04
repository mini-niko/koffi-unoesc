import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  
  const CustomButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return ElevatedButton(
      
      onPressed: () {}, 
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: theme.primaryTextTheme.titleMedium
          ),
        ],
      )
      
    );
  }
}