import 'package:flutter/material.dart';
import 'each_view.dart';

class IrregularBottomAppBar extends StatefulWidget {
  @override
  _IrregularBottomAppBarState createState() => new _IrregularBottomAppBarState();
}

class _IrregularBottomAppBarState extends State<IrregularBottomAppBar> {
  List<Widget> _eachview;
  int _currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    _eachview = List();
    _eachview..add(EachView("不规则的底部工具栏"))
    ..add(EachView("Flutter"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _eachview[_currentIndex],
      //可交互的复用的按钮
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
            return EachView("New Page");
          }));
        },
        //长按时候
        tooltip: 'Flutter',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      //关键性代码 控制floatingActionButton的位置
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //底部工具栏
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        //中间的缺口放添加图标
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: (){
                setState(() {
                  _currentIndex = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.airport_shuttle),
              color: Colors.white,
              onPressed: (){
                setState(() {
                  _currentIndex = 1;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
