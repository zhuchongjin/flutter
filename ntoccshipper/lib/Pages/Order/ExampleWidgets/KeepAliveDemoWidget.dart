import 'package:flutter/material.dart';
import './KeepAliveDemoWidget01.dart';

class KeepAliveView extends StatefulWidget {
  const KeepAliveView({Key? key}) : super(key: key);

  @override
  State<KeepAliveView> createState() => _KeepAliveViewState();
}

/*
with是dart的关键字，意思是混入的意思，
就是说可以将一个或者多个类的功能添加到自己的类无需继承这些类，
避免多重继承导致的问题。
SingleTickerProviderStateMixin 主要是我们初始化TabController时，
需要用到vsync ，垂直属性，然后传递this
*/

class _KeepAliveViewState extends State<KeepAliveView>
    with SingleTickerProviderStateMixin {
  var _tabController;
  final List listTabTitle = ['发布1', '发布2', '发布2', '发布4'];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: listTabTitle.length, vsync: this);
  }

// 重写释放方法
  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('保持页面状态'),
        bottom: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.holiday_village)),
            Tab(icon: Icon(Icons.list)),
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.home)),
          ],
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Text('12121'),
          // Text('222222'),
          // Text('33343434'),
          // Text('12121'),
          KeepAliveDemoSecond(),
          KeepAliveDemoSecond(),
          KeepAliveDemoSecond(),
          KeepAliveDemoSecond()
        ],
      ),
    );
  }
}
