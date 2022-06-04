import 'package:flutter/material.dart';

class LoginOptions extends StatelessWidget {
  const LoginOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: const Icon(Icons.g_mobiledata_outlined),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border:
                    Border.all(color: const Color.fromARGB(255, 82, 81, 81)),
                color: const Color.fromARGB(96, 69, 69, 69),
              ),
              height: 50,
              width: 150,
            ),
            const Spacer(),
            Row(
              children: [
                Container(
                  child: const Icon(Icons.apple),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: const Color.fromARGB(255, 82, 81, 81)),
                    color: const Color.fromARGB(96, 69, 69, 69),
                  ),
                  height: 50,
                  width: 150,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
