/*
 * @Date: 2020-07-07 14:38:08
 * @LastEditors: clooe
 * @LastEditTime: 2020-07-07 17:28:46
 * @FilePath: /jd_APP/lib/page/index_page.dart
 */

import 'package:flutter/material.dart';
import 'package:jd_APP/page/cart_page.dart';
import 'package:jd_APP/page/category_page.dart';
import 'package:jd_APP/page/home_page.dart';
import 'package:jd_APP/page/user_page.dart';
import 'package:jd_APP/provider/bottom_navi_provider.dart';
import 'package:provider/provider.dart';

class IndexPage extends StatefulWidget {
  IndexPage({Key key}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          Consumer<BottomNaviProvider>(builder: (_, mProvider, __) {
        return BottomNavigationBar(
          // 超过3个以上的时候需要加type 否则回变白
          type: BottomNavigationBarType.fixed,
          currentIndex: mProvider.bottomNaviIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), title: Text("分类")),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), title: Text("购物车")),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), title: Text("我的"))
          ],
          onTap: (index) {
            mProvider.changeBottomNaviIndex(index);
          },
        );
      }),
      body: Consumer<BottomNaviProvider>(builder: (_, mProvider, __) {
        return IndexedStack(
          index: mProvider.bottomNaviIndex,
          // IndexedStack 可以承载多个widget 且只显示一个widget
          // 层布局控件
          children: <Widget>[
            HomePage(),
            CategoryPage(),
            CartPage(),
            UserPage()
          ],
        );
      }),
    );
  }
}
