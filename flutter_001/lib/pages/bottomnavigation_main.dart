import 'package:flutter/material.dart';
import 'bottom_navigation.dart';

//void main()=>runApp(new MyApp());

//stlss 快速自动生成一个类
class BottomNavigationMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter bottomNavigationBar',
      theme: ThemeData.light(),
      home: BottomNavigationWidget(),
    );
  }
}
