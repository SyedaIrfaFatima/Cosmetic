import 'package:cosme/home/product_home_list/product_item_description.dart';

import 'package:flutter/material.dart';

import '../../utils/color.dart';
import '../../widget/app_icon.dart';
import '../../widget/big_text.dart';
import '../../widget/small_text.dart';

class ProductListItem extends StatelessWidget {
  const ProductListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 190),
          child: Container(
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
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BigText(
                  text: 'Popular Product',
                  color: AppColor.mainColor,
                  // style: TextStyle.copyWith(color: Colors.grey)),
                ),
                SmallText(
                  text: 'See All',
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [BigText(text: 'Skin care', size: 16)],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
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
                        image: DecorationImage(
                            image: AssetImage('assets/images/cleanser7.png'))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BigText(
                    color: Colors.black,
                    text: 'Cleanser',
                    size: 14,
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
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
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/mainmosturizer.png'))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BigText(
                    color: Colors.black,
                    text: 'Moisturizer',
                    size: 14,
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    width: 150,
                    height: 160,
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5,
                              offset: Offset(1, 1),
                              color: Colors.black26.withOpacity(0.5)),
                        ],
                        image: DecorationImage(
                            image: AssetImage('assets/images/Mask3.png'))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BigText(
                    color: Colors.black,
                    text: 'Mask',
                    size: 14,
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
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
                        image: DecorationImage(
                            image: AssetImage('assets/images/mainserum.png'))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BigText(
                    color: Colors.black,
                    text: 'Serum',
                    size: 14,
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            children: [BigText(text: 'Makeup', size: 16)],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
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
                        image: DecorationImage(
                            image: AssetImage('assets/images/lipstick.png'))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BigText(
                    color: Colors.black,
                    text: 'Lipstick',
                    size: 14,
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
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
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/mainfoundation.png'))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BigText(
                    color: Colors.black,
                    text: 'foundation',
                    size: 14,
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    width: 150,
                    height: 160,
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5,
                              offset: Offset(1, 1),
                              color: Colors.black26.withOpacity(0.5)),
                        ],
                        image: DecorationImage(
                            image: AssetImage('assets/images/eyeshadow.png'))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BigText(
                    color: Colors.black,
                    text: 'Eyeshadow',
                    size: 14,
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
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
                        image: DecorationImage(
                            image: AssetImage('assets/images/other.png'))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BigText(
                    color: Colors.black,
                    text: 'Others',
                    size: 14,
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            children: [BigText(text: 'Hair ', size: 16)],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
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
                        image: DecorationImage(
                            image: AssetImage('assets/images/hair.png'))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BigText(
                    color: Colors.black,
                    text: 'Shampoo',
                    size: 14,
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
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
                        image: DecorationImage(
                            image: AssetImage('assets/images/hairoil.png'))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BigText(
                    color: Colors.black,
                    text: 'Hair Oil',
                    size: 14,
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            children: [BigText(text: 'Makeup', size: 16)],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
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
                        image: DecorationImage(
                            image: AssetImage('assets/images/bodywash.png'))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BigText(
                    color: Colors.black,
                    text: 'Body Wash',
                    size: 14,
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
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
                        image: DecorationImage(
                            image: AssetImage('assets/images/scrub.png'))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BigText(
                    color: Colors.black,
                    text: 'Scrub',
                    size: 14,
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    width: 150,
                    height: 160,
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5,
                              offset: Offset(1, 1),
                              color: Colors.black26.withOpacity(0.5)),
                        ],
                        image: DecorationImage(
                            image: AssetImage('assets/images/eyeshadow.png'))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BigText(
                    color: Colors.black,
                    text: 'Eyeshadow',
                    size: 14,
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
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
                        image: DecorationImage(
                            image: AssetImage('assets/images/other.png'))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BigText(
                    color: Colors.black,
                    text: 'Others',
                    size: 14,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
