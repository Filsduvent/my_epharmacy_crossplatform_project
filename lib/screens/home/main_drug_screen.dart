// ignore_for_file: prefer_const_constructors


import 'package:e_pharmacie_platform_app/screens/home/drug_page_body.dart';
import 'package:e_pharmacie_platform_app/utils/dimensions.dart';
import 'package:e_pharmacie_platform_app/widgets/big_text.dart';
import 'package:flutter/material.dart';
import '../../utils/colors.dart';


class MainDrugScreen extends StatefulWidget {
  const MainDrugScreen({Key? key}) : super(key: key);

  @override
  State<MainDrugScreen> createState() => _MainDrugScreenState();
}

class _MainDrugScreenState extends State<MainDrugScreen> {
  @override
  Widget build(BuildContext context) {
    // print('current height is' + MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Column(
        children: [
          // showing the header
          Container(
            child: Container(
              margin: EdgeInsets.only(
                  top: Dimensions.height45, bottom: Dimensions.height15),
              padding: EdgeInsets.only(
                  left: Dimensions.width20, right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BigText(
                    text: 'Medicine Order',
                    color: AppColors.mainColor,
                  ),
                  Center(
                    child: Container(
                        width: Dimensions.width45,
                        height: Dimensions.height45,
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: Dimensions.iconSize24,
                        ),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius15),
                            color: AppColors.mainColor)),
                  )
                ],
              ),
            ),
          ),

          //showing the body
          Expanded(
              child: SingleChildScrollView(
            child: DrugPageBody(),
          ))
        ],
      ),
    );
  }
}
