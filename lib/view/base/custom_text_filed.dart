
import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final String hintText;
  
  final FocusNode? focusNode;
  final FocusNode? nextFocus;



  final bool isEnabled;
 


  final GlobalKey<FormFieldState<String>>? key;
  final bool showBorder;

  MyTextField(
      {this.hintText = 'text',
     
      this.focusNode,
      this.nextFocus,
      this.isEnabled = true,
    
      this.showBorder = false,
      this.key});

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: widget.showBorder
              ? Border.all(color: Theme.of(context).disabledColor)
              : null),
      child: TextField(
        key: widget.key,
      
    
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