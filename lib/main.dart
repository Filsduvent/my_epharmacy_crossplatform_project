// ignore_for_file: prefer_const_constructors

import 'package:e_pharmacie_platform_app/controllers/slide_drug_controller.dart';
import 'package:e_pharmacie_platform_app/routes/route_helper.dart';
import 'package:e_pharmacie_platform_app/screens/cart/cart_page.dart';
import 'package:e_pharmacie_platform_app/screens/home/main_drug_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SlideDrugController>(builder: (_) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',

        //home: MainDrugScreen(),
        initialRoute: RouteHelper.getSplashPage(),
        getPages: RouteHelper.routes,
      );
    });
  }
}
