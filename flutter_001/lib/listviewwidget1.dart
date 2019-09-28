import 'package:flutter/material.dart';

//void main() => runApp(MyApp());

class ListViewWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListViewWidget',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('ListViewWidget'),
        ),
        body: new ListView(
          children: <Widget>[
            //图片列表
            new Image.network(
               'https://img4.sycdn.imooc.com/szimg/5ac2dfe100014a9005400300.jpg'
            ),
            new Image.network(
                'https://img2.sycdn.imooc.com/szimg/5d14215f08545a6b06000338.jpg'
            ),
            new Image.network(
                'https://img3.sycdn.imooc.com/szimg/5a7127370001a8fa05400300.jpg'
            ),
            new Image.network(
                'https://img1.sycdn.imooc.com/szimg/5d08d0b308c9749706000338.jpg'
            ),

            //图标+文字列表
//            new ListTile(
//              leading: new Icon(Icons.book),
//              title: new Text('book'),
//            ),
//            new ListTile(
//              leading: new Icon(Icons.access_alarm),
//              title: new Text('access alarm'),
//            ),
//            new ListTile(
//              leading: new Icon(Icons.android),
//              title: new Text('android'),
//            ),
//            new ListTile(
//              leading: new Icon(Icons.phone_iphone),
//              title: new Text('ios'),
//            ),
          ],
        ),
      ),
    );
  }

}