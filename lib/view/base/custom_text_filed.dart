import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final String hintText;

  final FocusNode? focusNode;
  final FocusNode? nextFocus;
  final TextEditingController? controller;


  const MyTextField({
    super.key,
    this.hintText = 'text',
    this.controller,
    this.focusNode,
    this.nextFocus,
  });

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border:
               Border.all(color: Theme.of(context).disabledColor)
              ),
      child: TextField(
        key: widget.key,
        controller: widget.controller,
        focusNode: widget.focusNode,
        decoration: InputDecoration(
          hintText: widget.hintText,
          isDense: true,
          filled: true,
          fillColor: Color(0xFFF7F7F7),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
