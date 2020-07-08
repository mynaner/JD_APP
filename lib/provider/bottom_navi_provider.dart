/*
 * @Date: 2020-07-07 17:15:52
 * @LastEditors: clooe
 * @LastEditTime: 2020-07-07 17:20:11
 * @FilePath: /jd_APP/lib/provider/bottom_navi_provider.dart
 */

import 'package:flutter/foundation.dart';

class BottomNaviProvider with ChangeNotifier {
  int bottomNaviIndex = 0;

  void changeBottomNaviIndex(int index) {
    if (this.bottomNaviIndex != index) {
      this.bottomNaviIndex = index;
      notifyListeners();
    }
  }
}
