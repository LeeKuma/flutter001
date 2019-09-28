import 'package:flutter/material.dart';

//void main()=>runApp(MyApp());

class ImageWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ImageWidget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ImageWidget'),
        ),
        body: Center(
          child: Container(
            //加入图片的几种方式
            //Image.asset:加载资源图片，就是加载项目资源目录中的图片,加入图片后会增大打包的包体体积，用的是相对路径。
            //Image.network:网络资源图片，意思就是你需要加入一段http://xxxx.xxx的这样的网络路径地址。
            //Image.file:加载本地图片，就是加载本地文件中的图片，这个是一个绝对路径，跟包体无关。
            //Image.memory: 加载Uint8List资源图片
            child: new Image.network(
              'https://img1.mukewang.com/szimg/5d14215f08545a6b06000338.jpg',
              scale: 2.0,//缩放比例
//              fit: BoxFit.cover,//填充样式
              // fill充满;
              // contain一条边会贴着容器，另一条边不确定;
              // cover充满容器，保持原比例，可能图片超出容器显示不全;
              // fitWidth宽充满
              // fitHeight高充满
              // scaleDown保持原图片的大小，图片大了才有效果，最不常用

              //图片叠加模式
              color: Colors.greenAccent,
              colorBlendMode: BlendMode.dstIn,//很多种

              //重复模式
              // repeat 横向纵向都重复
              // repeatX 横向重复
              // repeatY 纵向重复
              // norepeat 不重复
              repeat: ImageRepeat.repeat,
            ),
            width: 400.0,
            height: 300.0,
            color: Colors.lightBlue,
          )
        ),
      )
    );
  }
}