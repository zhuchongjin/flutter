import 'package:flutter/material.dart';
import './Base/BottomTabBar.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Navigation Basics',
    theme: ThemeData.light(),
    // home: new HomeVC(),

    home: BottomNavigationWidget(),
  ));
}
