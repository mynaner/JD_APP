/*
 * @Date: 2020-07-07 14:28:16
 * @LastEditors: clooe
 * @LastEditTime: 2020-07-07 17:22:05
 * @FilePath: /jd_APP/lib/main.dart
 */
import 'package:flutter/material.dart';
import 'package:jd_APP/page/index_page.dart';
import 'package:jd_APP/provider/bottom_navi_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider.value(
      value: BottomNaviProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: IndexPage(),
    );
  }
}
