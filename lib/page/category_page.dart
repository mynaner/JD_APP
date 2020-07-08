/*
 * @Date: 2020-07-07 14:45:46
 * @LastEditors: clooe
 * @LastEditTime: 2020-07-07 14:52:47
 * @FilePath: /jd_APP/lib/page/category_page.dart
 */
import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("分类")), body: Text("category"));
  }
}
