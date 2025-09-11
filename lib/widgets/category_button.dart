import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final String name;

  const CategoryButton({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => "",
      child: Text(name, style: TextStyle(fontSize: 20, color: Colors.white)),
    );
  }
}
