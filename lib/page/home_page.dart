/*
 * @Date: 2020-07-07 14:45:08
 * @LastEditors: clooe
 * @LastEditTime: 2020-07-08 11:29:26
 * @FilePath: /jd_APP/lib/page/home_page.dart
 */

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:jd_APP/provider/home_page_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomePageProvider>(
      create: (context) {
        print(1);
        var provider = new HomePageProvider();
        provider.loaHomePageData();
        return provider;
      },
      child: Scaffold(
        appBar: AppBar(title: Text("首页")),
        body: Consumer<HomePageProvider>(builder: (_, provider, __) {
          return Container(
            child: Text("data"),
          );
        }),
      ),
    );
  }
}
