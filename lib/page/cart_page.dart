/*
 * @Date: 2020-07-07 14:45:08
 * @LastEditors: clooe
 * @LastEditTime: 2020-07-07 14:52:17
 * @FilePath: /jd_APP/lib/page/cart_page.dart
 */

import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  CartPage({Key key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("购物车")),
      body: Text("cart"),
    );
  }
}
