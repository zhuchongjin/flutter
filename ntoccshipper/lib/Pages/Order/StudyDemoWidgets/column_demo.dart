import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Column示例',
    home: new ColumnDemo(),
  ));
}

class ColumnDemo extends StatelessWidget {
  const ColumnDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column 的使用'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('发布货源'),
          Center(
            child: Text('账户信息'),
          ),
          Expanded(child: Text('车货统计')),
          Text('通知消息'),
        ],
      ),
    );
  }
}
