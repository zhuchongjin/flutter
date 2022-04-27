import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: '返回参数',
    home: MyFirstView(),
  ));
}

class MyFirstView extends StatelessWidget {
  const MyFirstView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: Text('这是一个页面'),
    // );
    return Scaffold(
        appBar: AppBar(
          title: Text('返回带参数'),
        ),
        body: JumpToNextNav());
  }
}

class JumpToNextNav extends StatelessWidget {
  const JumpToNextNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        // color: Colors.amber,
        child: GestureDetector(
      child: Text('跳转到下一级Nav ,双击触发'),
      onDoubleTap: () {
        navgationToNextNav(context);
      },
    ));
  }
}

navgationToNextNav(BuildContext context) async {
  // 异步跳转
  final result = await Navigator.push(
      context, MaterialPageRoute(builder: (context) => NavSecondView()));
  Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result')));
}

// 第二个 nav 页面
class NavSecondView extends StatelessWidget {
  const NavSecondView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('这是Nav的第二个页面'),
      ),
      body: NvaDetailView(),
    );
  }
}

class NvaDetailView extends StatelessWidget {
  const NvaDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Container(
          padding: EdgeInsets.all(20.0),
          child: GestureDetector(
            child: ListTile(
              title: Text('发布货源'),
              subtitle: Text('点击进入，填写相关的信息等 进行生成订单的操作'),
              leading: Icon(Icons.abc_rounded),
            ),
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>))
              Navigator.pop(context, '发布货源的使用');
            },
          ),
        ),
        Divider(),
        Container(
          padding: EdgeInsets.all(5),
          child: GestureDetector(
            child: ListTile(
              title: Text('账户信息'),
              subtitle: Text('查看账户的明细'),
              leading: Icon(Icons.home_filled),
            ),
            onTap: () {
              Navigator.pop(context, '账户信息');
            },
          ),
        ),
      ]),
    );
  }
}



// //跳转的Button
// class RouteButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return RaisedButton(
//       onPressed: () {
//         _navigateToXiaoJieJie(context);
//       },
//       child: Text('去找小姐姐'),
//     );
//   }

//   _navigateToXiaoJieJie(BuildContext context) async {
//     //async是启用异步方法

//     final result = await Navigator.push(
//         //等待
//         context,
//         MaterialPageRoute(builder: (context) => XiaoJieJie()));

//     Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result')));
//   }
// }

// class XiaoJieJie extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('我是小姐姐')),
//       body: Center(
//           child: Column(
//         children: <Widget>[
//           RaisedButton(
//             child: Text('大长腿小姐姐'),
//             onPressed: () {
//               Navigator.pop(context, '大长腿:1511008888');
//             },
//           ),
//           RaisedButton(
//             child: Text('小蛮腰小姐姐'),
//             onPressed: () {
//               Navigator.pop(context, '大长腿:1511009999');
//             },
//           ),
//         ],
//       )),
//     );
//   }
// }
