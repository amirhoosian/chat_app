import 'package:flutter/material.dart';

class ButtonCoustom extends StatelessWidget {
  final void Function()? ontap;
  final String text;
  const ButtonCoustom({super.key, required this.ontap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        child: Center(child: Text(text)),
      ),
    );
  }
}
