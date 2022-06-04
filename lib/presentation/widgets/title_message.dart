import 'package:flutter/material.dart';

class TitleMessage extends StatelessWidget {
  const TitleMessage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Login with one of the following options.",
      style: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 14,
        color: Colors.grey,
      ),
    );
  }
}
