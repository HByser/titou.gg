import 'dart:html';

import 'package:flutter/material.dart';
import 'package:opgg/inputNameScreen.dart';

class HistoricScreen extends StatelessWidget {
  const HistoricScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("HoByser"),
                  Text("Historic"),
                ],
              )
            ],
          ),
        )
      ),
    );
  }
}
