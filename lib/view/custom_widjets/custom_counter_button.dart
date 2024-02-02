import 'package:flutter/material.dart';

class CustomCounterButton extends StatelessWidget {
  final void Function()? onPressed;

  final String text;
  final String? operation;

  const CustomCounterButton(
      {Key? key, required this.onPressed, required this.text, this.operation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.orange,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      onPressed: () {
        onPressed!();
      },
      child: Text(
        "$text \n $operation",
        style: TextStyle(
          color: Colors.brown,
          fontSize: 18,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
