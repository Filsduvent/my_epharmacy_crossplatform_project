import 'package:e_pharmacie_platform_app/controllers/recent_drug_controller.dart';
import 'package:e_pharmacie_platform_app/controllers/slide_drug_controller.dart';
import 'package:e_pharmacie_platform_app/repository/cart_repo.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../controllers/cart_controller.dart';

Future<void> init() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  Get.lazyPut(() => sharedPreferences);

  //repos
  Get.lazyPut(() => CartRepo(sharedPreferences:Get.find()));

  //controllers
  Get.lazyPut(() => SlideDrugController());
  Get.lazyPut(() => RecentDrugController());
  Get.lazyPut(() => CartController());
}
