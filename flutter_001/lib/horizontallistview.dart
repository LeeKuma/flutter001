import 'package:flutter/material.dart';

//void main() => runApp(MyApp());

class HorizontalListViewWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListViewWidget',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('ListViewWidget'),
        ),
        body: Center(
          child: Container(
            height: 200.0,
            child: MyList()
          ),
        )
      ),
    );
  }
}

class MyList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      //ListView组件的scrollDirection属性只有两个值，一个是横向滚动，一个是纵向滚动。默认的就是垂直滚动，所以如果是垂直滚动，我们一般都不进行设置。
      //Axis.horizontal:横向滚动或者叫水平方向滚动。
      //Axis.vertical:纵向滚动或者叫垂直方向滚动。
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
