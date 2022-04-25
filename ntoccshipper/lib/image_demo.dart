import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: '图片示例',
    home: new SecondScreen(),
  ));
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("图片示例"),
      ),
      // body: new Center(
      //   child: new RaisedButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     child: new Text('Go back!'),
      //   ),
      // ),
      body: Center(
        child: Container(
          // 网络图片
          // child: new Image.network(
          //     'http://m.imeitou.com/uploads/allimg/2018052508/rdfqlyrluii.jpg',
          //     scale: 1.0,
          //     fit: BoxFit.fitHeight),

          // 本地图片
          child: new Image.asset(
            'images/lu_fei.png',
            fit: BoxFit.cover,
          ),

          width: 300.0,
          height: 200.0,
          color: Colors.lightBlue,
        ),
      ),
    );
  }
}
