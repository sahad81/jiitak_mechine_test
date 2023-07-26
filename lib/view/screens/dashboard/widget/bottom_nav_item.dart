import 'package:flutter/material.dart';

class BottomNavItem extends StatelessWidget {
  final IconData iconData;
  final Function() onTap;
  final bool isSelected;
  BottomNavItem({required this.iconData, required this.onTap, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: IconButton(
        icon:
        
            Column(
              children: [
                Icon(iconData, color: isSelected? Color(0xFFFAAA14) : Colors.black, size: 25),
             
              ],
            ),
  
        onPressed: onTap,
      ),
    );
  }
}
