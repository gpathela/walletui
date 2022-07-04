import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;
  const MyButton({
    Key? key,
    required this.iconImagePath,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade600, blurRadius: 40, spreadRadius: 10)
            ],
          ),
          child: Center(child: Image.asset(iconImagePath)),
        ),
        const SizedBox(height: 10),
        Text(buttonText,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700],
            )),
      ],
    );
  }
}
