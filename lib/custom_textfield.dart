import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final bool showCheckBox;

  const CustomTextField({Key? key, required this.hintText, required this.showCheckBox}) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, bottom: 5.0),
      child: Container(
        child: TextField( // Set text color to green
          decoration: InputDecoration(
            hintText: widget.hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.green), // Set border color to green
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.teal.shade600), // Set focused border color to green
            ),
            filled: true, // Set to true to fill the background
            fillColor: Colors.white,
            suffixIcon: widget.showCheckBox
                ? Checkbox(
              value: isChecked,
              shape: CircleBorder(), // this is to make the check
              onChanged: (value) {
                setState(() {
                  isChecked = value!;
                });
              },
              activeColor: Colors.green, // Change the color when selected
            )
                : null, // Null if showCheckBox is false
          ),
        ),
      ),
    );
  }
}
