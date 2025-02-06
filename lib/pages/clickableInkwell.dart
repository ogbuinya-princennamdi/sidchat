import 'package:flutter/material.dart';

class clickableInkWell extends StatelessWidget {
  final Widget child;
  final Function()? onTap;

  const clickableInkWell({super.key, required this.child, this.onTap});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onTap, // Optional: Pass onTap function
      child: AbsorbPointer(
        absorbing: false, // Set to true to absorb pointer events
        child: IgnorePointer(
          ignoring: false, // Set to true to ignore pointer events
          child: child,
        ),
      ),
    );
  }

}
