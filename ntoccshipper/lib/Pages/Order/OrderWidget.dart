import 'package:flutter/material.dart';
import './StudyDemoWidgets/StudyDemos.dart';
import './ExampleWidgets/ExampleWidgets.dart';

class OrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('运单'),
        ),
        body: Center(
          child: OrderList(),
        ));
  }
}

class OrderList extends StatelessWidget {
  const OrderList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10.0),
      children: [
        GestureDetector(
          child: ListTile(
            title: Text('发布货源'),
            subtitle: Text('一些常用的空间方法等练习'),
            leading: Icon(Icons.home),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => StudyDemos()));
          },
        ),
        Divider(
          height: 1.0,
          color: Colors.blue,
        ),
        GestureDetector(
          child: ListTile(
            title: Text('账户信息'),
            subtitle: Text('部分小实例应用'),
            leading: Icon(Icons.list_alt),
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ExampleWidgets()));
          },
        )
      ],
    );
  }
}
