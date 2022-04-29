import 'package:flutter/material.dart';

class KeepAliveDemoSecond extends StatefulWidget {
  const KeepAliveDemoSecond({Key? key}) : super(key: key);

  @override
  State<KeepAliveDemoSecond> createState() => _KeepAliveDemoSecondState();
}

//混入AutomaticKeepAliveClientMixin，这是保持状态的关键
//然后重写wantKeppAlive 的值为true。

class _KeepAliveDemoSecondState extends State<KeepAliveDemoSecond>
    with AutomaticKeepAliveClientMixin {
  int _counter = 0;

  @override
  bool get wantKeepAlive => true;
  //声明一个内部方法，用来点击按钮后增加数量
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('点一下加1，点一下加1:'),
            Text('$_counter',
                // style: Theme.of(context).textTheme.displayLarge,
                style: TextStyle(fontSize: 37.0, color: Colors.red))
          ],
        ),
      ),
      //增加一个悬浮按钮，点击时触犯_incrementCounter方法
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
