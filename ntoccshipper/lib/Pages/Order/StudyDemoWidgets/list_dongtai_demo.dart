import 'package:flutter/material.dart';

void main() {
  
  runApp(new MaterialApp(
    title: '动态列表示例',
    home: new DongTaiListDemo(),
  ));
}

class DongTaiListDemo extends StatelessWidget {
  DongTaiListDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('动态列表示例'),
      ),
    );
  }
}
