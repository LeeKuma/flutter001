import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextWidget',
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => HomePage(),
        '/text': (BuildContext context) => TextWidget(),
      },
      initialRoute: '/home',
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('首页'),),
      body: Padding(
          padding: EdgeInsets.all(30.0),
          child: RaisedButton(
              child: Text('Text Widget'),
              onPressed: (){
//                  Navigator.push(context, MaterialPageRoute(builder: (context)=>TextWidget()));
                Navigator.pushNamed(context, '/text');//2
              },
          ),
      ),
    );
  }
}


class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'TextWdiget',
          textAlign: TextAlign.left,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: TextStyle(
            fontSize: 25.0,
            color: Color.fromARGB(255, 255, 150, 150),
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.solid,
          ),
        ),
      ),
    );
  }
}

