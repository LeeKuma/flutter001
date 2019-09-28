import 'package:flutter/material.dart';
import 'demo/sample.dart';
import 'imagewidget.dart';
import 'listviewwidget1.dart';
import 'horizontallistview.dart';
import 'gridview.dart';
import 'containerwidget1.dart';
import 'containerwidget2.dart';
import 'pages/bottomnavigation_main.dart';
import 'irregularappbar/irregular_main.dart';
import 'forestedglass/forested_glass_main.dart';
import 'keepalive/keep_alive_main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter组件实例集合',
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => HomePage(),
        '/sample': (BuildContext context) => Sample(),
        '/text': (BuildContext context) => TextWidget(),
        '/image': (BuildContext context) => ImageWidget(),
        '/listview': (BuildContext context) => ListViewWidget(),
        '/horizontallistview': (BuildContext context) =>
            HorizontalListViewWidget(),
        '/container1': (BuildContext context) => ContainerWidget1(),
        '/container2': (BuildContext context) => ContainerWidget2(),
        '/gridview': (BuildContext context) => GridViewWidget(),
        '/bottomnavigation': (BuildContext context) => BottomNavigationMain(),
        '/irregular': (BuildContext context) => IrregularBottomAppBarMain(),
        '/forestedglass': (BuildContext context) => ForestedGlassMain(),
        '/keepalive': (BuildContext context) => KeepAliveMain(),
      },
      initialRoute: '/home',
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter组件实例集合'),),
      body: new ListView(
        children: <Widget>[
          new ListTile(
            title: new Text('官方默认sample'),
            onTap: () => Navigator.pushNamed(context, '/sample'),
          ),
          new ListTile(
            title: new Text('TextWidget'),
            onTap: () => Navigator.pushNamed(context, '/text'),
          ),
          new ListTile(
            title: new Text('ImageWidget'),
            onTap: () => Navigator.pushNamed(context, '/image'),
          ),
          new ListTile(
            title: new Text('ListViewWidget'),
            onTap: () => Navigator.pushNamed(context, '/listview'),
          ),
          new ListTile(
            title: new Text('HorizontalListViewWidget'),
            onTap: () => Navigator.pushNamed(context, '/horizontallistview'),
          ),
          new ListTile(
            title: new Text('ContainerWidget1'),
            onTap: () => Navigator.pushNamed(context, '/container1'),
          ),
          new ListTile(
            title: new Text('ContainerWidget2'),
            onTap: () => Navigator.pushNamed(context, '/container2'),
          ),
          new ListTile(
            title: new Text('GridView'),
            onTap: () => Navigator.pushNamed(context, '/gridview'),
          ),
          new ListTile(
            title: new Text('底部工具栏'),
            onTap: () => Navigator.pushNamed(context, '/bottomnavigation'),
          ),
          new ListTile(
            title: new Text('不规则的底部工具栏'),
            onTap: () => Navigator.pushNamed(context, '/irregular'),
          ),
          new ListTile(
            title: new Text('毛玻璃效果'),
            onTap: () => Navigator.pushNamed(context, '/forestedglass'),
          ),
          new ListTile(
            title: new Text('保持页面状态'),
            onTap: () => Navigator.pushNamed(context, '/keepalive'),
          ),
        ],
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
          //TextAlign属性就是文本的对齐方式，它的属性值有如下几个（详细请看视频中讲解）：
          //center: 文本以居中形式对齐,这个也算比较常用的了。
          //left:左对齐，经常使用，让文本居左进行对齐，效果和start一样。
          //right :右对齐，使用频率也不算高。
          //start:以开始位置进行对齐，类似于左对齐。
          //end: 以为本结尾处进行对齐，不常用。有点类似右对齐.
          overflow: TextOverflow.ellipsis,
          //#overflow：
          //overflow属性是用来设置文本溢出时，如何处理,它有下面几个常用的值供我们选择。
          //clip：直接切断，剩下的文字就没有了，感觉不太友好，体验性不好。
          //ellipsis:在后边显示省略号，体验性较好，这个在工作中经常使用。
          //fade: 溢出的部分会进行一个渐变消失的效果，当然是上线的渐变，不是左右的哦。
          maxLines: 1,
          //#maxLines：设置最多显示的行数
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

