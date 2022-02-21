import 'package:flutter/material.dart';
import 'package:opgg/Common/listCard.dart';
import 'package:opgg/Common/reusableStyle.dart';
import 'package:opgg/inputNameScreen.dart';

import '../Common/reusablCard.dart';
import '../ListtTile.dart';

class HistoricScreen extends StatelessWidget {
  const HistoricScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<int> items = [1, 2, 3, 4, 5, 6, 7];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("HoByser"), titleTextStyle: kTitleStyle, backgroundColor: Colors.black,),
        backgroundColor: Colors.grey,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //for (var i in text)
              ListView.separated(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) => Divider(
                  color: Colors.black,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: LitTile()
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    /*appBar: AppBar(title: Text("HoByser"), titleTextStyle: kTitleStyle,),
      body: Container(
        color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: <Widget> [
                    ListCard(),
                ]
              ),
            ],
          ),
      ),
    );*/
  }
}
