import 'package:flutter/material.dart';

//void main()=>runApp(MyApp());

class ContainerWidget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ContainerWidget2',
        home: Scaffold(
          appBar: AppBar(
            title: Text('ContainerWidget2'),
          ),
          body: Center(
              child: Container(
                  child: new Text(
                    'hello flutter',
                    style: TextStyle(
                        fontSize: 40.0
                    ),
                  ),
                  alignment: Alignment.topLeft,
                  width: 500.00,
                  height: 400.0,
                  padding: const EdgeInsets.all(20.0),
                  //padding: const EdgeInsets.fromLTRB(10.0, 30.0, 0.0, 0.0),
                  //EdgeInsets.fromLTRB(value1,value2,value3,value4) 可以满足我们的需求，LTRB分别代表左、上、右、下。
                  margin: const EdgeInsets.all(10.0),
                  decoration: new BoxDecoration( //渐变
                    //decoration是 container 的修饰器，主要的功能是设置背景和边框。
                      gradient: const LinearGradient(colors: [
                        Colors.lightBlue,
                        Colors.greenAccent,
                        Colors.purple
                      ]),
                      //设置边框可以在decoration里设置border属性，比如你现在要设置一个红色边框，宽度为2。
                      border: Border.all(width: 2.0, color: Colors.red)
                  )
              )
          ),
        )
    );
  }
}