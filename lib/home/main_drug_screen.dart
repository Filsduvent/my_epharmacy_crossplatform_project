import 'package:e_pharmacie_platform_app/home/drug_page_body.dart';
import 'package:e_pharmacie_platform_app/widgets/big_text.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class MainDrugScreen extends StatefulWidget {
  const MainDrugScreen({Key? key}) : super(key: key);

  @override
  State<MainDrugScreen> createState() => _MainDrugScreenState();
}

class _MainDrugScreenState extends State<MainDrugScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(top: 45, bottom: 15),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BigText(
                    text: 'Medicine Order',
                    color: AppColors.mainColor,
                  ),
                  Center(
                    child: Container(
                        width: 45,
                        height: 45,
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: AppColors.mainColor)),
                  )
                ],
              ),
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: DrugPageBody(),
          ))
        ],
      ),
    );
  }
}
