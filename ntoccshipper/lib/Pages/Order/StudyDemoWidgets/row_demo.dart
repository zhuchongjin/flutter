import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: '列表示例',
    home: new RowDemo(),
  ));
}

class RowDemo extends StatelessWidget {
  const RowDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('row的简单使用'),
      ),
      body: Row(
        children: [
          new RaisedButton(
              onPressed: () {},
              color: Colors.redAccent,
              child: new Text('红色按钮')),

          // Expanded 灵活布局

          Expanded(
              child: new RaisedButton(
            onPressed: () {},
            color: Colors.orangeAccent,
            child: new Text('黄色按钮'),
          )),

          new GestureDetector(
            child: Container(
              width: 100.0,
              color: Colors.black38,
              child: Text(
                '按钮',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.yellow,
                ),
              ),
            ),

            // child: Text(

            //   '按钮',
            //   style: TextStyle(
            //     fontSize: 15.0,
            //     color: Colors.yellow,
            //   ),
            // ),
          ),

          // new RaisedButton(
          //     onPressed: () {},
          //     color: Colors.pinkAccent,
          //     child: new Text('粉色按钮'))
        ],
      ),
    );
  }
}
