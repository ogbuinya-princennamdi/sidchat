import 'package:flutter/material.dart';

class mySwitch extends StatefulWidget {
  const mySwitch({super.key});
  @override
  State<mySwitch> createState() => _mySwitchState();
}

class _mySwitchState extends State<mySwitch>{


  bool _switchValue = false;


  @override
  Widget build(BuildContext context) {
    return Switch(
          value: _switchValue,
          onChanged: (newValue) {
            setState(() {
                  _switchValue = newValue;
            }
            );

          },
      activeTrackColor: _switchValue ? const Color(0xFF075E55) : Colors.red,

    );
  }
}
