

import 'package:e_pharmacie_platform_app/controllers/recent_drug_controller.dart';
import 'package:e_pharmacie_platform_app/controllers/slide_drug_controller.dart';
import 'package:get/get.dart';

import '../controllers/cart_controller.dart';

Future<void> init() async {
 // final sharedPreferences = await SharedPreferences.getInstance();

  //Get.lazyPut(() => sharedPreferences);
  

  //controllers
  Get.lazyPut(() => SlideDrugController());
  Get.lazyPut(() => RecentDrugController());
  Get.lazyPut(() => CartController());
}
