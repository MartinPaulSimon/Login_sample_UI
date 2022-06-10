import 'package:flutter/material.dart';

class TitleMessage extends StatelessWidget {
  const TitleMessage({Key? key, required this.firstText}) : super(key: key);
  final String firstText;

  @override
  Widget build(BuildContext context) {
    return Text(
      firstText,
      style: const TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 14,
        color: Colors.grey,
      ),
    );
  }
}
