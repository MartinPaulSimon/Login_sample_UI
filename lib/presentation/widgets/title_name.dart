import 'package:flutter/material.dart';

class TitleName extends StatelessWidget {
  final String name;
  const TitleName(
    this.name, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
    );
  }
}
