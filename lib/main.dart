import 'package:flutter/material.dart';
import 'package:learning_flutter/CameraPage.dart';
import 'package:learning_flutter/HomePage.dart';
import 'package:learning_flutter/ProfilePage.dart';
import 'package:learning_flutter/SearchPage.dart';
import 'package:learning_flutter/constants.dart';

void main() => runApp(MaterialApp(
      routes: {
        '/home': (context) => HomePage(),
        '/search': (context) => SearchPage(),
        '/camera': (context) => CameraPage(),
        '/profile': (context) => ProfilePage(),
      },
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // int _currentIndex = 0;
  // final List<Widget> _mywidget = [
  //   HomePage(),
  //   SearchPage(),
  //   CameraPage(),
  //   ProfilePage(),
  // ];

  // final tabs = [
  //   Center(child: Text('Home'),),
  //   Center(child: Text('Search'),),
  //   Center(child: Text('Camera'),),
  //   Center(child: Text('Profile'),),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Rekib Ahmed"),
              accountEmail: Text('something'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text('P'),
              ),
            ),
            ListTile(
              title: Text('Home'),
              trailing: Icon(Icons.home),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/home');
              },
            ),
            ListTile(
              title: Text('Search'),
              trailing: Icon(Icons.search),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/search');
              },
            ),
            ListTile(
              title: Text('Camera'),
              trailing: Icon(Icons.camera),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/camera');
              },
            ),
            ListTile(
                title: Text('Profile'),
                trailing: Icon(Icons.person),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed('/profile');
                }),
            ListTile(
              title: Text('Close'),
              trailing: Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      // body: _mywidget[_currentIndex],
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _currentIndex,
      //   onTap: (index) {
      //     setState(() {
      //       _currentIndex=index;
      //     });
      //   },
      //   type: BottomNavigationBarType.fixed,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       title: Text('Home'),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.search),
      //       title: Text('Search'),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.camera),
      //       title: Text('Camera'),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       title: Text('Profile'),
      //     ),
      //   ],
      // ),
    );
  }

  void choiceAction(String choice) {
    if (choice == Constants.Settings) {
      // TODO create settings model
      print('settings');
    } else if (choice == Constants.Subscribe) {
      // TODO create settings model
      print('subscribe');
    } else if (choice == Constants.SignOut) {
      // TODO create settings model
      print('sign out');
    }
  }
}
