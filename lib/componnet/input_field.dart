import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hinttext;
  final bool obscuretext;
  final TextEditingController controller;
  const InputField(
      {super.key, required this.hinttext, required this.obscuretext, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
      child: TextField(
        controller: controller,
        obscureText: obscuretext,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.tertiary),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.primary),
            ),
            hintText: hinttext,
            filled: true,
            fillColor: Theme.of(context).colorScheme.secondary,
            hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary)),
      ),
    );
  }
}
