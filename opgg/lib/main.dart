import 'inputNameScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyOpgg());

class MyOpgg extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: '/search',
      routes: {
        '/search': (context) => Test(),
        '/historic': (context) => Test(),
      },
    );
  }
}

