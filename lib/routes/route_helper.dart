// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations
import 'package:e_pharmacie_platform_app/screens/drug/popular_drug_detail.dart';
import 'package:e_pharmacie_platform_app/screens/home/main_drug_screen.dart';
import 'package:get/get.dart';

import '../screens/drug/recent_drug_detail.dart';

class RouteHelper {
  static const String splashPage = "/splash-page";
  static const String initial = '/';
  static const String popularDrug = '/popular-drug';
  static const String recentDrug = '/recent-drug';
  static const String cartPage = "/cart-page";

   static String getInitial() => '$initial';
  static String getPopularDrug(int pageId) => '$popularDrug?pageId=$pageId';
  static String getRecentDrug(int pageId) =>'$recentDrug?pageId=$pageId';

  /* static String getSplashPage() => '$splashPage';
  static String getInitial() => '$initial';
  static String getPopularDrug(int pageId, String page) =>
      '$popularDrug?pageId=$pageId&page=$page';
  static String getRecentDrug(int pageId, String page) =>
      '$recentDrug?pageId=$pageId&page=$page';
  static String getCartPage() => '$cartPage';*/

  static List<GetPage> routes = [
    //GetPage(name: splashPage, page: ()=>SplashScreen()),
    GetPage(name: initial, page: () => MainDrugScreen()),
    GetPage(
        name: popularDrug,
        page: () {
          var pageId = Get.parameters['pageId'];
          return PopularDrugDetail(pageId:int.parse(pageId!));
        },
        transition: Transition.fadeIn),
    
    GetPage(
        name: recentDrug,
        page: () {
          var pageId = Get.parameters['pageId'];
          return RecentDrugDetail(pageId: int.parse(pageId!));
        },
        transition: Transition.fadeIn)
        
    /*GetPage(
        name: popularDrug,
        page: () {
          var pageId = Get.parameters['pageId'];
          var page = Get.parameters["page"];
          return PopularDrugDetail(pageId: int.parse(pageId!), page: page!);
        },
        transition: Transition.fadeIn),
    GetPage(
        name: recommendedFood,
        page: () {
          var pageId = Get.parameters['pageId'];
          var page = Get.parameters["page"];
          return RecommendedFoodDetail(pageId: int.parse(pageId!), page: page!);
        },
        transition: Transition.fadeIn),
    /*GetPage(
        name: cartPage,
        page: () {
          return CartPage();
        },
        transition: Transition.fadeIn),*/
        */
  ];
}
