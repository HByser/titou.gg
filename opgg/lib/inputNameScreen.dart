import 'package:flutter/material.dart';
import 'package:opgg/API/historic.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _InputScreen createState() => _InputScreen();
}


class _InputScreen extends State<Test> {
  String dropdownValue = 'EUW';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset("assets/logo.png"),
                  SizedBox(
                    width: 250,
                    child: TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          labelText: 'Invocator name',
                          labelStyle: TextStyle(
                            color: Colors.white,
                          ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: FormField<String>(
                          builder: (FormFieldState<String> state) {
                            return InputDecorator(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: dropdownValue,
                                  dropdownColor: Colors.black,
                                  icon: const Icon(Icons.arrow_downward),
                                  style: const TextStyle(color: Colors.white),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownValue = newValue!;
                                    });
                                  },
                                  items: <String>['EUW', 'JAP', 'NA', 'KR']
                                      .map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  TextButton.icon(
                    onPressed: () {
                      Navigator.push(builder: (context) => const HistoricScreen());
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    icon: Icon(Icons.search, color: Colors.white),
                    label: Text(
                      "Search",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ),
    );
  }
}
