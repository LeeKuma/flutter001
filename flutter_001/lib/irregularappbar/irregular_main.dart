import 'package:flutter/material.dart';
import 'irregular_bottom_appbar.dart';

//void main()=>runApp(new MyApp());

//stlss 快速自动生成一个类
class IrregularBottomAppBarMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter irregular bottomNavigationBar',
      //自定义主题样本
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: IrregularBottomAppBar(),
    );
  }
}
