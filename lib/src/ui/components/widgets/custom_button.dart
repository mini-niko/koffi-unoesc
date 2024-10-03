import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double fontSize;
  
  const CustomButton({super.key, required this.title, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        backgroundColor: const Color.fromRGBO(199, 121, 101, 1)
      ),
      onPressed: () {}, 
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 22, bottom: 22),
            child: Text(
              title,
              style: TextStyle(
                fontSize: fontSize,
                color: const Color.fromRGBO(230, 230, 230, 1),
                fontWeight: FontWeight.w700
              ),
            ),
          )
        ],
      )
      
    );
  }
}