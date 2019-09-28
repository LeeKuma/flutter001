import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'email_screen.dart';
import 'pages_screen.dart';
import 'airplay_screen.dart';


//stful 动态自动生成widget
class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => new _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _BottomNavigationColor = Colors.blue;
  int _currentIndex = 0;
  List<Widget> list = List();

  @override
  void initState() {
    super.initState();
    //..add 建造者模式 简单来说就是返回调用者本身
    //谁使用他，就返回谁 这里list后用了..add()，还会返回list
    //可以一直连续使用
    list
    ..add(HomeScreen())
    ..add(EmailScreen())
    ..add(PagesScreen())
    ..add(AirplayScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],//创建完页面之后，加入body
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _BottomNavigationColor,
              ),
              title: Text(
                  'Home',
                  style: TextStyle(color: _BottomNavigationColor),
              )
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.email,
                  color: _BottomNavigationColor,
                ),
                title: Text(
                  'Email',
                  style: TextStyle(color: _BottomNavigationColor),
                )
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.pages,
                  color: _BottomNavigationColor,
                ),
                title: Text(
                  'Pages',
                  style: TextStyle(color: _BottomNavigationColor),
                )
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.airplay,
                  color: _BottomNavigationColor,
                ),
                title: Text(
                  'Airplay',
                  style: TextStyle(color: _BottomNavigationColor),
                )
            ),
          ],
        //当前高亮的
        currentIndex: _currentIndex,
        //监听 切换tab
        onTap: (int index){
            setState(() {
              _currentIndex = index;
            });
        },
      ),
    );
  }
}
