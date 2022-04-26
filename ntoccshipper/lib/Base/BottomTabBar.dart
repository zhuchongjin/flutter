import 'package:flutter/material.dart';
import '../Pages/HomeWidget.dart';
import '../Pages/OrderWidget.dart';
import '../Pages/MineWidget.dart';

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
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _BottomNavigationColor,
              ),
              label: '首页',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.list_alt,
                color: _BottomNavigationColor,
              ),
              label: '运单',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: _BottomNavigationColor,
                ),
                label: '我的'),
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
