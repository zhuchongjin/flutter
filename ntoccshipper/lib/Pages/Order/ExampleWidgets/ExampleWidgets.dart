import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './KeepAliveDemoWidget.dart';
import './WrapDemo.dart';

class ExampleWidgets extends StatelessWidget {
  const ExampleWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('实例应用'),
      ),
      body: ExampleWidgetsList(),
    );
  }
}

class ExampleWidgetsList extends StatelessWidget {
  const ExampleWidgetsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(5.0),
      children: [
        GestureDetector(
          child: ListTile(
            title: Text('发布货源'),
            subtitle: Text('保持页面状态的例子  tabbarview'),
            leading: Icon(Icons.library_add),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          onTap: () {
            print('自定义而');
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => KeepAliveView()));
          },
        ),
        Divider(),
        ListTile(
          title: Text('账户信息'),
          subtitle: Text('ListTitle 的onTap属性 ,头像 加载URL'),
          leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'http://m.imeitou.com/uploads/allimg/2018052508/rdfqlyrluii.jpg')),
          onTap: () {
            print('ListTitle 控件的 点击属性');
          },
        ),
        Divider(),
        GestureDetector(
          child: ListTile(
            title: Text('车货统计'),
            subtitle: Text('统计数据的 ,头像加载本地图片'),
            leading: Image.asset(
              'images/lu_fei.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Divider(),
        GestureDetector(
          child: ListTile(
            title: Text('Wrap 流式布局'),
            subtitle: Text('流式布局的简单使用'),
            leading: Icon(Icons.home_filled),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => WrapView()));
          },
        )
      ],
    );
  }
}
