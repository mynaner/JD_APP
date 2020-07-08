/*
 * @Date: 2020-07-08 10:55:35
 * @LastEditors: clooe
 * @LastEditTime: 2020-07-08 11:20:38
 * @FilePath: /jd_APP/lib/provider/home_page_provider.dart
 */

import 'package:flutter/foundation.dart';
import 'package:jd_APP/config/jd_api.dart';
import 'package:jd_APP/model/home_page_model.dart';
import 'package:jd_APP/net/net_request.dart';

class HomePageProvider with ChangeNotifier {
  HomePageModel model;
  bool isLoading = false;
  bool isError = false;
  String errMsg;
  loaHomePageData() {
    this.isLoading = true;
    this.isError = false;
    this.errMsg = "";
    NetRequest().requestData(JdApi.Home_PAGE).then((res) {
      this.isLoading = false;
      print(res.code);
      if (res.code == 200) {
        model = HomePageModel.fromJson(res.data);
      } else {
        this.isError = true;
        this.errMsg = res.msg;
      }
      notifyListeners();
    }).catchError((e) {
      this.isLoading = false;
      this.isError = true;
      this.errMsg = e;
      notifyListeners();
    });
  }
}
