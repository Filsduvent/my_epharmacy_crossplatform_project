// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables
import 'package:e_pharmacie_platform_app/widgets/expandable_text_widget.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
import '../../widgets/app_icon.dart';
import '../../widgets/big_text.dart';

class RecentDrugDetail extends StatelessWidget {
  const RecentDrugDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: AppIcon(icon: Icons.clear),
                ),
                //AppIcon(icon: Icons.shopping_cart_outlined),

                GestureDetector(
                  onTap: () {},
                  child: Stack(
                    children: [
                      AppIcon(icon: Icons.shopping_cart_outlined),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: AppIcon(
                          icon: Icons.circle,
                          size: 20,
                          iconColor: Colors.transparent,
                          backgroundColor: AppColors.mainColor,
                        ),
                      ),
                      Positioned(
                        right: 3,
                        top: 3,
                        child: BigText(
                          text: "1",
                          size: 12,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(
                    child:
                        BigText(size: Dimensions.font26, text: "Chinise meal")),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20),
                    )),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.mainColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/pills0.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                  child: ExpandableTextWidget(
                      text:
                          "Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot.Chicken marinated in spiced yoghurt is place in large pot."),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: AppIcon(
                      iconSize: Dimensions.iconSize24,
                      iconColor: Colors.white,
                      backgroundColor: AppColors.mainColor,
                      icon: Icons.remove),
                ),
                BigText(
                  text: "\$12.88" + " X " + "0",
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                GestureDetector(
                  onTap: () {},
                  child: AppIcon(
                      iconSize: Dimensions.iconSize24,
                      iconColor: Colors.white,
                      backgroundColor: AppColors.mainColor,
                      icon: Icons.add),
                )
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(
                top: Dimensions.height30,
                bottom: Dimensions.height30,
                left: Dimensions.width20,
                right: Dimensions.width20),
            decoration: BoxDecoration(
                color: AppColors.buttonBackgroundColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius20 * 2),
                  topLeft: Radius.circular(Dimensions.radius20 * 2),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.only(
                        top: Dimensions.height20,
                        bottom: Dimensions.height20,
                        left: Dimensions.width20,
                        right: Dimensions.width20),
                    child: BigText(
                      text: '\$ 110 | Add to cart',
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: AppColors.mainColor,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
