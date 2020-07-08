/*
 * @Date: 2020-07-07 20:19:52
 * @LastEditors: clooe
 * @LastEditTime: 2020-07-08 10:16:50
 * @FilePath: /jd_APP/lib/config/jd_api.dart
 */

class JdApi {
  static const String BASE_URL = "http://192.168.0.103:5001/api/";

  // 返回首页请求的json
  static const String Home_PAGE = BASE_URL + "profiles/homepage";
  static const String CATEGORY_NAV = BASE_URL + "profiles/navigationLeft";
  static const String CATEGORY_CONTENT = BASE_URL + "profiles/navigationRight";
  static const String PRODUCTIONS_LIST = BASE_URL + "profiles/productionsList";
  static const String PRODUCTIONS_DETAIL =
      BASE_URL + "profiles/productionDetail";
}
