import 'package:flutter/material.dart';



class popupMenuButton extends StatefulWidget {
  const popupMenuButton({super.key});

  @override
  _popupMenuButtonState createState() => _popupMenuButtonState();
}

class _popupMenuButtonState extends State<popupMenuButton> {
  String? _selectedOption= 'optionOne';

  @override
  Widget build(BuildContext context) {
    return  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Text(
              //   'Selected Option: ${_selectedOption ?? 'None'}',
              //   style: TextStyle(fontSize: 18),
              // ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[

                  Radio<String>(
                    materialTapTargetSize: MaterialTapTargetSize.padded,
                    visualDensity: VisualDensity.comfortable,
                    focusColor: Colors.blue,
                    activeColor: const Color(0xFF075E55),
                    value: 'optionOne',

                    groupValue: _selectedOption,
                    onChanged: (String? value) {
                      setState(() {
                        _selectedOption = value;
                      });
                    },
                  ),
                  const Text('8 hours'),


    ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Radio<String>(
                      materialTapTargetSize: MaterialTapTargetSize.padded,
                      visualDensity: VisualDensity.comfortable,
                      focusColor: Colors.blue,
                      activeColor: const Color(0xFF075E55),
                      value: 'Option1',

                      groupValue: _selectedOption,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedOption = value;
                        });
                      },
                    ),
                    const Text(' 1 week'),


                  ]),

              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Radio<String>(
                      materialTapTargetSize: MaterialTapTargetSize.padded,
                      visualDensity: VisualDensity.comfortable,
                      focusColor: Colors.blue,
                      activeColor: const Color(0xFF075E55),
                      value: 'Option 1',

                      groupValue: _selectedOption,
                      onChanged: (String? value) {
                        setState(() {
                          _selectedOption = value;
                        });
                      },
                    ),
                    const Text('Always'),


                  ]),

                ],
              ),


    );
  }
}
