import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double fontSize;
  
  const CustomButton({super.key, required this.title, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {}, 
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: fontSize,
              color: const Color.fromRGBO(230, 230, 230, 1),
              fontWeight: FontWeight.w700
            ),
          ),
        ],
      )
      
    );
  }
}