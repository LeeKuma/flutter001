import 'package:flutter/material.dart';

//void main()=>runApp(MyApp());

class GridViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '电影海报实例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('电影海报实例GridView'),
        ),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 2.0,
              crossAxisSpacing: 2.0,
              childAspectRatio: 0.75 //宽高比例
          ),
          children: <Widget>[
            new Image.network(
                'https://i.gtimg.cn/qqlive/img/jpgcache/files/qqvideo/b/buu2vowm3g2hvh7_y.jpg',
                fit: BoxFit.cover),
            new Image.network(
                'https://i.gtimg.cn/qqlive/img/jpgcache/files/qqvideo/0/0ema04r0fn3ee66_y.jpg',
                fit: BoxFit.cover),
            new Image.network(
                'https://i.gtimg.cn/qqlive/img/jpgcache/files/qqvideo/y/y6pe34pk9u6safc_y.jpg',
                fit: BoxFit.cover),
            new Image.network(
                'https://i.gtimg.cn/qqlive/img/jpgcache/files/qqvideo/e/eaa7qkjmlecfnp1_y.jpg',
                fit: BoxFit.cover),
            new Image.network(
                'https://i.gtimg.cn/qqlive/img/jpgcache/files/qqvideo/r/rt4fr3c7290zd64_y.jpg',
                fit: BoxFit.cover),
            new Image.network(
                'https://i.gtimg.cn/qqlive/img/jpgcache/files/qqvideo/6/69nk6bxlda1kmt5_y.jpg',
                fit: BoxFit.cover),
            new Image.network(
                'https://i.gtimg.cn/qqlive/img/jpgcache/files/qqvideo/f/f83yyw1wjm6vqwu_y.jpg',
                fit: BoxFit.cover),
            new Image.network(
                'https://i.gtimg.cn/qqlive/img/jpgcache/files/qqvideo/v/v8k7mfnyjfzj4rd_y.jpg',
                fit: BoxFit.cover),
            new Image.network(
                'https://i.gtimg.cn/qqlive/img/jpgcache/files/qqvideo/l/llws99784lrtpz7_y.jpg',
                fit: BoxFit.cover),
            new Image.network(
                'https://i.gtimg.cn/qqlive/img/jpgcache/files/qqvideo/7/78iwzhnw1i4ipd4_y.jpg',
                fit: BoxFit.cover),
            new Image.network(
                'https://i.gtimg.cn/qqlive/img/jpgcache/files/qqvideo/1/1jnzhlclsozgc0i_y.jpg',
                fit: BoxFit.cover),
            new Image.network(
                'https://i.gtimg.cn/qqlive/img/jpgcache/files/qqvideo/7/75ijb6qovzrhtp7_y.jpg',
                fit: BoxFit.cover),
          ],
        ),
        //padding:表示内边距，这个小伙伴们应该很熟悉。
        //crossAxisSpacing:网格间的空当，相当于每个网格之间的间距。
        //crossAxisCount:网格的列数，相当于一行放置的网格数量。
//        body: GridView.count(
//          padding: const EdgeInsets.all(10.0),
//          crossAxisSpacing:  10.0,
//          crossAxisCount: 3,
//          children: <Widget>[
//            const Text('I Love Flutter!'),
//            const Text('I Love Flutter!'),
//            const Text('I Love Flutter!'),
//            const Text('I Love Flutter!'),
//            const Text('I Love Flutter!'),
//            const Text('I Love Flutter!'),
//          ],
//        )
      ),
    );
  }
}