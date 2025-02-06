import 'package:flutter/material.dart';

class unclickableInkWell extends StatelessWidget {
  final Widget child;
  final Function()? onTap;

  const unclickableInkWell({super.key, required this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Optional: Pass onTap function
      child: AbsorbPointer(
        absorbing: true, // Set to true to absorb pointer events
        child: IgnorePointer(
          ignoring: true, // Set to true to ignore pointer events
          child: child,
        ),
      ),
    );
  }

}
