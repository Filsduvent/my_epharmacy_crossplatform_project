import 'package:e_pharmacie_platform_app/screens/drug/popular_drug_detail.dart';
import 'package:e_pharmacie_platform_app/screens/home/main_drug_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: MainDrugScreen(),
      home: PopularDrugDetail(),
    );
  }
}
