import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Product {
  final String title; // 标题
  final String desc; // 描述
  Product(this.title, this.desc);
}

void main() {
  runApp(MaterialApp(
    title: '',
    home: NavProductDemo(),
    // home: NavProductList(
    //   products:
    //       List.generate(20, (index) => Product('商品 $index', '这是商品详情 $index')),
    // ),
  ));
}

class NavProductDemo extends StatelessWidget {
  const NavProductDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('跨页面传参'),
      ),
      body: NavProductList(
        products:
            List.generate(12, (index) => Product('商品 $index', '这是商品详情 $index')),
      ),
    );
  }
}

class NavProductList extends StatelessWidget {
  final List<Product> products;
  const NavProductList({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('数据传递案例-- 商品列表'),
    //   ),
    //   body: ListView.builder(
    //     itemCount: products.length,
    //     itemBuilder: (context, index) {
    //       return ListTile(title: Text(products[index].title), onTap: () {});
    //     },
    //   ),
    // );

    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ListTile(
            title: Text(products[index].title),
            onTap: () {
              // print('点击了 $index 商品 ,商品详情是：${products[index].desc}');
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Productdetail(product: products[index])));
            });
      },
    );
  }
}

//  详情页面

class Productdetail extends StatelessWidget {
  final Product product;
  const Productdetail({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('${product.title}'),
        ),
        body: Center(
          child: Text('${product.desc}'),
        ));
  }
}
