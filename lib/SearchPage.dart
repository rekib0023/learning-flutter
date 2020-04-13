import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('This is Search Page'),
      ),
    );
  }
}