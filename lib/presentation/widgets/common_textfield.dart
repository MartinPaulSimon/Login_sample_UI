import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField({
    Key? key,
    required this.hintText,
    required this.validator,
    this.iconData = Icons.person,
    this.showSuffixIcon = false,
  }) : super(key: key);
  final String hintText;
  final FormFieldValidator<String>? validator;
  final IconData iconData;
  final bool showSuffixIcon;
  // final double fontSize;
  // final Color color;
  // final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      //onSaved: (value) => email = value,
      decoration: InputDecoration(
        suffixIcon: const Icon(Icons.check_box),
        hintText: hintText,
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(14)),
          borderSide:
              BorderSide(width: 1, color: Color.fromARGB(255, 244, 54, 228)),
        ),
      ),
    );
  }
}
