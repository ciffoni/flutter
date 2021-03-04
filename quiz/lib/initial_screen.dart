import 'package:flutter/material.dart';

class InicialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue,
      child: Column(
        children: [
          SizedBox(height: 167.0),
          Image(
            image: AssetImage('lib/assets/icone.png'),
          ),
        ],
      ),
    );
  }
}
