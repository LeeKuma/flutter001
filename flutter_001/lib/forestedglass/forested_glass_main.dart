import 'package:flutter/material.dart';
import 'forested_glass.dart';

class ForestedGlassMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '毛玻璃效果',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home:Scaffold(
        appBar: AppBar(
          title: Text('毛玻璃效果'),
        ),
        body: FrostedGlass(),
      ),
    );
  }
}
