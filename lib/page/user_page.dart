/*
 * @Date: 2020-07-07 14:45:08
 * @LastEditors: clooe
 * @LastEditTime: 2020-07-07 14:51:53
 * @FilePath: /jd_APP/lib/page/user_page.dart
 */

import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  UserPage({Key key}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("个人中心")),
      body: Text("user"),
    );
  }
}
