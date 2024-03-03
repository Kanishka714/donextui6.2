import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final Color color;
  final String buttonText;
  const MyButton({Key? key, required this.color, required this.buttonText}) : super(key: key);

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: widget.color, // Use widget.color instead of Color
        ),
        onPressed: () {
          print("button clicked");
        },
        child: Text(
          widget.buttonText, // Use widget.buttonText for the button text
        ),
      ),
    );
  }
}
