import 'package:flutter/material.dart';
import '../Pages/Home/HomeWidget.dart';
import '../Pages/Order/OrderWidget.dart';
import '../Pages/Mine/MineWidget.dart';

class BottomNavigationWidget extends StatefulWidget {
  BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _BottomNavigationColor = Colors.blue;
  int _currentIndex = 0;
  List<Widget> list = [];

  @override
  void initState() {
    list
      ..add(HomeScreen())
      ..add(OrderScreen())
      ..add(MineScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: [
            // BottomNavigationBarItem(
            //   icon: Icon(
            //     Icons.home,
            //     color: _BottomNavigationColor,
            //   ),
            //   label: '首页',
            // ),
            BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage('images/home_n.png'),
                  width: 18.0,
                  height: 18.0,
                ),
                activeIcon: Image(
                  image: AssetImage('images/home_p.png'),
                  width: 18.0,
                  height: 18.0,
                ),
                label: '首页'),

            BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage('images/order_n.png'),
                  width: 18.0,
                  height: 18.0,
                ),
                activeIcon: Image(
                  image: AssetImage('images/order_p.png'),
                  width: 18.0,
                  height: 18.0,
                ),
                label: '运单'),

            BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage('images/mine_n.png'),
                  height: 18.0,
                  width: 18.0,
                ),
                activeIcon: Image(
                  image: AssetImage('images/mine_p.png'),
                  height: 18.0,
                  width: 18.0,
                ),
                label: '我的')
          ],
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed),
    );
  }
}
