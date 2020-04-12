import 'package:flutter/material.dart';
import 'package:learning_flutter/constants.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('my first app'),
      centerTitle: true,
      backgroundColor: Colors.red[600],
      actions: <Widget>[
        PopupMenuButton<String>(
          onSelected: choiceAction,
          itemBuilder: (BuildContext context) {
            return Constants.choices.map((String choice) {
              return PopupMenuItem<String>(
                value: choice,
                child: Text(choice),
              );
            }).toList();
          },
        ),
      ],
    ),
  );
  }


  void choiceAction(String choice){
    if(choice == Constants.Settings){
      // TODO create settings model
      print('settings');
    } else if(choice == Constants.Subscribe){
      // TODO create settings model
      print('subscribe');
    } else if(choice == Constants.SignOut){
      // TODO create settings model
      print('sign out');
    }
  }

}
