import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/widgets.dart';
import 'package:ntoccshipper/image_demo.dart';
import './list_view.dart';
import './list_dongtai_demo.dart';
import './row_demo.dart';
import './column_demo.dart';
import './stack_demo.dart';
import './cart_demo.dart';
import './navigator_view.dart';
import './navigator_view01.dart';
import './navigator_view02.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Navigation Basics',
    home: new HomeVC(),
  ));
}

class HomeVC extends StatelessWidget {
  const HomeVC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('网络货运货主端'),
        ),
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: [
            Container(
              padding: EdgeInsets.all(20),
              color: Colors.green,
              child: new Text(
                '发布货源',
                style: TextStyle(fontSize: 15, color: Colors.red),
              ),
            ),
            Container(
              height: 50,
              child: GestureDetector(
                child: new Text(
                  '账户信息',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new SecondScreen()),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: GestureDetector(
                child: Text(
                  '运费统计--列表示例',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new ListViewDemo()));
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: GestureDetector(
                child: Text(
                  '动态列表 --- 暂时未做',
                  style: TextStyle(fontSize: 15.0, color: Colors.black26),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: ((context) => new DongTaiListDemo())));
                },
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
              color: Colors.lightBlue,
              child: GestureDetector(
                child: Text(
                  '水平布局Row的使用',
                  style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.black,
                      decoration: TextDecoration.underline),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new RowDemo()));
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.white,
              child: GestureDetector(
                child: Text(
                  'column 的用法',
                  style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new ColumnDemo()));
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              color: Colors.white,
              child: GestureDetector(
                child: Text('Stack 层叠'),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new StackDemo()));
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: GestureDetector(
                child: Text('Cart 视图的使用'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CartDemo()));
                },
              ),
            ),
            // 分割线
            Divider(),
            Container(
              padding: EdgeInsets.all(5.0),
              child: GestureDetector(
                child: ListTile(
                  title: Text('点击跳转 navigator'),
                  subtitle: Text('nav 和 pop的联系使用'),
                  leading: Icon(Icons.access_alarm_outlined),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NavigatorDemo()));
                },
              ),
            ),
            Divider(),

            Container(
              // padding: EdgeInsets.all(5.0),
              child: GestureDetector(
                child: ListTile(
                  title: Text('数据传递案例'),
                  subtitle: Text('nav 之间的数据 传递的案例'),
                  leading: Icon(Icons.dashboard_customize),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NavProductDemo()));
                },
              ),
            ),
            Divider(),

            Container(
              child: GestureDetector(
                child: ListTile(
                  title: Text('页面跳转返回数据 pop ,返回传递'),
                  subtitle: Text('两个nav之间的 参数传递'),
                  leading: Icon(Icons.home),
                ),
                onTap: () {
                  print('9090');
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyFirstView()));
                },
              ),
            )
          ],
        ));
  }
}




//                 onTap: () {
//                   print("7695769567596");
//                   Navigator.push(
//                     context,
//                     new MaterialPageRoute(
//                         builder: (context) => new SecondScreen()),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
