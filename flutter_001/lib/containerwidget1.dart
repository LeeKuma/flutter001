import 'package:flutter/material.dart';

//void main()=>runApp(MyApp());

class ContainerWidget1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ContainerWidget1',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ContainerWidget1'),
        ),
        body: Center(
          child: Container(
            child: new Text(
              'hello flutter',
              style: TextStyle(
                fontSize: 40.0
              ),
            ),
            alignment: Alignment.center,
            //bottomCenter:下部居中对齐。
            //botomLeft: 下部左对齐。
            //bottomRight：下部右对齐。
            //center：纵横双向居中对齐。
            //centerLeft：纵向居中横向居左对齐。
            //centerRight：纵向居中横向居右对齐。
            //topLeft：顶部左侧对齐。
            //topCenter：顶部居中对齐。
            //topRight： 顶部居左对齐
            width: 500.00,
            height: 400.0,
            color: Colors.lightBlue,
          )
        ),
      )
    );
  }
}