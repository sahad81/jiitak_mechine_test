import 'package:flutter/material.dart';
import 'package:jiitak_inc_ui_task/view/base/custom_text_filed.dart';

class Result extends StatelessWidget {
  const Result({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
body:SafeArea(child: 
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   MyTextField(
  
    hintText: 'search',
  
  ),
)
)

    );
  }
}