import 'package:cosme/widget/app_icon.dart';
import 'package:cosme/widget/big_text.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

import '../utils/color.dart';
import '../widget/small_text.dart';

class Types extends StatefulWidget {
  const Types({Key? key}) : super(key: key);

  @override
  State<Types> createState() => _TypesState();
}

class _TypesState extends State<Types> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            margin: EdgeInsets.only(
              top: 40,
            ),
            child: ListView(children: [
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      color: AppColor.mainColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppIcon(
                              icon: Icons.arrow_back_ios,
                              ontap: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            // BigText(text: "My Cart"),
                            badges.Badge(
                              position: badges.BadgePosition.topEnd(
                                  top: -8, end: -14),
                              badgeContent: Text('72',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontStyle: FontStyle.italic,
                                      fontSize: 12)),
                              onTap: () {},
                              badgeAnimation: badges.BadgeAnimation.rotation(
                                animationDuration: Duration(seconds: 6),
                                colorChangeAnimationDuration:
                                    Duration(seconds: 2),
                                loopAnimation: false,
                                curve: Curves.fastOutSlowIn,
                                colorChangeAnimationCurve: Curves.easeInCubic,
                              ),
                              badgeStyle: badges.BadgeStyle(
                                shape: badges.BadgeShape.circle,
                                badgeColor: Colors.blue,
                                padding: EdgeInsets.all(5),
                                borderRadius: BorderRadius.circular(4),
                                borderSide:
                                    BorderSide(color: Colors.white, width: 2),
                                borderGradient: badges.BadgeGradient.linear(
                                    colors: [Colors.red, Colors.deepOrange]),
                                badgeGradient: badges.BadgeGradient.linear(
                                  colors: [
                                    Colors.deepOrange,
                                    AppColor.mainColor
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                                elevation: 0,
                              ),
                              child: AppIcon(
                                icon: Icons.shopping_cart,
                                ontap: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ),
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[100]),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        AppIcon(icon: Icons.search),
                        SizedBox(
                          width: 20,
                        ),
                        SmallText(
                          text: 'Search Product',
                          color: Colors.grey[400],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            width: 150,
                            height: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 5,
                                    offset: Offset(1, 1),
                                    color: Colors.black26.withOpacity(0.5)),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: Column(
                                children: [
                                  Image(
                                      height: 120,
                                      image: AssetImage(
                                          'assets/images/lipstick.png')),
                                  BigText(
                                    color: Colors.black,
                                    text: 'Cleaser 1',
                                    size: 16,
                                  ),
                                  SmallText(
                                      text: '\$12.50',
                                      color: AppColor.mainColor),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 30,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Colors.deepOrange,
                                border: Border.all(
                                    color: AppColor.mainColor, width: 3),
                              ),
                              child: Center(
                                  child: BigText(
                                text: 'Add to cart',
                                size: 13,
                              )),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            width: 150,
                            height: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 5,
                                    offset: Offset(1, 1),
                                    color: Colors.black26.withOpacity(0.5)),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: Column(
                                children: [
                                  Image(
                                      height: 120,
                                      image: AssetImage(
                                          'assets/images/lipstick.png')),
                                  BigText(
                                    color: Colors.black,
                                    text: 'Cleaser 1',
                                    size: 16,
                                  ),
                                  SmallText(
                                      text: '\$12.50',
                                      color: AppColor.mainColor),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 30,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Colors.deepOrange,
                                border: Border.all(
                                    color: AppColor.mainColor, width: 3),
                              ),
                              child: Center(
                                  child: BigText(
                                text: 'Add to cart',
                                size: 13,
                              )),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            width: 150,
                            height: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 5,
                                    offset: Offset(1, 1),
                                    color: Colors.black26.withOpacity(0.5)),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: Column(
                                children: [
                                  Image(
                                      height: 120,
                                      image: AssetImage(
                                          'assets/images/lipstick.png')),
                                  BigText(
                                    color: Colors.black,
                                    text: 'Cleaser 1',
                                    size: 16,
                                  ),
                                  SmallText(
                                      text: '\$12.50',
                                      color: AppColor.mainColor),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.only(left: 10),
                              height: 30,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                // color: Colors.deepOrange,
                                border: Border.all(
                                    color: AppColor.mainColor, width: 3),
                              ),
                              child: Center(
                                  child: BigText(
                                text: 'Add to cart',
                                size: 13,
                              )),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            width: 150,
                            height: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 5,
                                    offset: Offset(1, 1),
                                    color: Colors.black26.withOpacity(0.5)),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: Column(
                                children: [
                                  Image(
                                      height: 120,
                                      image: AssetImage(
                                          'assets/images/lipstick.png')),
                                  BigText(
                                    color: Colors.black,
                                    text: 'Cleaser 1',
                                    size: 16,
                                  ),
                                  SmallText(
                                      text: '\$12.50',
                                      color: AppColor.mainColor),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            height: 30,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              // color: Colors.deepOrange,
                              border: Border.all(
                                  color: AppColor.mainColor, width: 3),
                            ),
                            child: Center(
                                child: BigText(
                              text: 'Add to cart',
                              size: 13,
                            )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ])));
  }
}
