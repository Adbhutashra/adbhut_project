import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  final VoidCallback onTap;
  final double height;
  final double width;
  final BoxDecoration decoration;
  final Color backgroundColor;
  final Widget child;

  CustomFloatingButton({
    required this.onTap,
    required this.height,
    required this.width,
    required this.decoration,
    required this.backgroundColor,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onTap,
      backgroundColor: Colors.transparent,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // Adjust the corner radius
      ),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10), // Same corner radius as shape
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, 3),
            ),
          ],
          
        ),
        child: Center(child: child),
      ),
    );
  }
}