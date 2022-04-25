import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: '',
    home: StackDemo(),
  ));
}

class StackDemo extends StatelessWidget {
  const StackDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack 叠加布局'),
      ),
      // body: StackFirst(),
      body: StackPositioned(),
    );
  }
}

// Stack的Positioned属性
class StackPositioned extends StatelessWidget {
  const StackPositioned({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              'http://m.imeitou.com/uploads/allimg/2018052508/rdfqlyrluii.jpg'),
          radius: 80.0,
        ),
        Positioned(
          child: Text(
            'Stack 使用',
            style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: Colors.red[200]),
          ),
          top: 10.0,
          left: 20.0,
        ),
        Positioned(
            child: Image.asset(
          'images/lu_fei.png',
          width: 50.0,
          height: 50.0,
        ))
      ],
    );
  }
}

//  Satck的基本使用
class StackFirst extends StatelessWidget {
  const StackFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const FractionalOffset(0.5, 0.8),
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              'http://m.imeitou.com/uploads/allimg/2018052508/rdfqlyrluii.jpg'),
          radius: 100.0,
        ),
        Container(
          decoration: new BoxDecoration(
            color: Colors.lightBlue,
          ),
          padding: EdgeInsets.all(5.0),
          child: Text('Stack布局使用'),
        )
      ],
    );
  }
}
