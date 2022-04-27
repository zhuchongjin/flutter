import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget {
  const NavigatorDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('导航页面'),
      ),
      body: Center(
        child: GestureDetector(
          child: Text('查看详情页面 ,双击返回上一页'),
          onDoubleTap: () {
            print('双击 详情页面');
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
