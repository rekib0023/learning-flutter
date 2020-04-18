import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List imgList = [
    'https://images.unsplash.com/photo-1554629947-334ff61d85dc?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1534067783941-51c9c23ecefd?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1505764761634-1d77b57e1966?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1545161296-d9c2c241f2ad?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjExMDk0fQ&auto=format&fit=crop&w=634&q=80',
    'https://images.unsplash.com/photo-1542662565-7e4b66bae529?ixlib=rb-1.2.1&auto=format&fit=crop&w=564&q=80'
  ];

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
          CarouselSlider(
              options: CarouselOptions(
                initialPage: 0,
                height: 400,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
              ),
              items: imgList.map((imgUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.network(
                        imgUrl,
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                );
              }).toList()),
        ],
      ),
    );
  }
}
