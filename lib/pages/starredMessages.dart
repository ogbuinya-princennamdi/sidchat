import 'package:flutter/material.dart';


class starredMessages extends StatelessWidget {
  const starredMessages({super.key});

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text('Starred messages',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}