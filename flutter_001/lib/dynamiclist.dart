import 'package:flutter/material.dart';

void main() => runApp(MyApp(
  items: new List<String>.generate(1000, (i) => "Item $i")
));

class MyApp extends StatelessWidget{
  final List<String> items;

  MyApp({Key key, @required this.items}):super(key:key);

  @override
  Widget build(BuildContext context) => MaterialApp(
      title: '动态列表的使用',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('动态列表的使用'),
        ),
        body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index){
            return new ListTile(
              title: new Text('${items[index]}'),
            );
          },
        )
      ),
    );
}

class MyList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
          width: 180.0,
          color: Colors.lightBlue,
        ),
        new Container(
          width: 180.0,
          color: Colors.amber,
        ),
        new Container(
          width: 180.0,
          color: Colors.deepOrange,
        ),
        new Container(
          width: 180.0,
          color: Colors.deepPurple,
        ),
      ]
    );
  }

}
