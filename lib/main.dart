import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _numbers = [0, 1, 2, 3, 4, 5];
  var _currentItemSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyApp'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(width: double.infinity),
          Text('Select a number'),
          DropdownButton<int>(
            onChanged: (int newValueSelected) {
              // print(newValueSelected);
              setState(() {
                _currentItemSelected = newValueSelected;
              });
            },
            items: _numbers.map((int dropDownIntItem) {
              return DropdownMenuItem<int>(
                value: dropDownIntItem,
                child: Text(dropDownIntItem.toString()),
              );
            }).toList(),
            value: _currentItemSelected,
          )
        ],
      ),
    );
  }
}
