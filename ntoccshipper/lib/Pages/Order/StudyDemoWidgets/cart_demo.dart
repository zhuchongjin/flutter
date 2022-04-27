import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: '',
    home: CartDemo(),
  ));
}

class CartDemo extends StatelessWidget {
  const CartDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart 卡片视图的使用'),
      ),
      body: CartSecondDemo(),
    );
  }
}

class CartSecondDemo extends StatelessWidget {
  const CartSecondDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // child: ListTile(
      //   title: Text(
      //     '这是第一行',
      //     style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      //   ),
      // ),
      child: Card(
        child: Column(
          children: [
            GestureDetector(
              child: ListTile(
                title: Text('发布货源',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                subtitle: Text('填写信息等进行发布运单'),
                leading: Icon(Icons.home),
              ),
              onTap: () {
                print('填写信息等进行发布运单');
              },
            ),

            // 分割线
            Divider(),

            ListTile(
              title: Text(
                '账户信息',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              subtitle: Text('查看用户的账户信息等 ，包括钱包等等'),
              // tileColor: Colors.redAccent,
              leading: Icon(
                Icons.wallet_giftcard,
                color: Colors.amber,
              ),
            ),

            // 分割线
            Divider(),

            GestureDetector(
              // child: Text(
              //   '车货统计',
              //   style: TextStyle(fontSize: 15),
              // ),
              child: ListTile(
                title: Text(
                  '车货统计',
                  style: TextStyle(fontSize: 15),
                ),
                subtitle: Text('统计已发运的 数量 ine等等'),
                leading: Icon(Icons.face_retouching_natural),
              ),
              onTap: () {
                print('车货统计 的发展');
              },
            )
          ],
        ),
      ),
    );
  }
}

class CartFristDemo extends StatelessWidget {
  const CartFristDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: new Text(
              '吉林省吉林市昌邑区',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: new Text('技术胖:1513938888'),
            leading: new Icon(
              Icons.account_box,
              color: Colors.lightBlue,
            ),
          ),
          new Divider(),
          ListTile(
            title: new Text(
              '北京市海淀区中国科技大学',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: new Text('胜宏宇:1513938888'),
            leading: new Icon(
              Icons.account_box,
              color: Colors.lightBlue,
            ),
          ),
          new Divider(),
          ListTile(
            title: new Text(
              '河南省濮阳市百姓办公楼',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: new Text('JSPang:1513938888'),
            leading: new Icon(
              Icons.account_box,
              color: Colors.lightBlue,
            ),
          ),
          new Divider(),
        ],
      ),
    );
  }
}
