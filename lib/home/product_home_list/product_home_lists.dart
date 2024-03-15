import 'package:cosme/home/product_home_list/product_item_description.dart';
import 'package:cosme/home/product_home_list/product_list_items.dart';
import 'package:flutter/material.dart';
import '../../mycart/add_to_cart.dart';
import '../../utils/color.dart';
import '../../widget/app_icon.dart';
import '../../widget/big_text.dart';
import '../../widget/button/text_button.dart';
import '../../widget/small_text.dart';

class MainProduct extends StatefulWidget {
  const MainProduct({Key? key}) : super(key: key);

  @override
  State<MainProduct> createState() => _MainProductState();
}

class _MainProductState extends State<MainProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 210,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: AppColor.mainColor,
              ),
              child: Container(
                padding: (EdgeInsets.symmetric(horizontal: 50, vertical: 80)),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                          text: 'Hi Javeria',
                          color: Colors.white,
                        ),
                        SmallText(
                          text: 'Its time to add product to cart',
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
              ),
            ),
            ProductListItem(),
          ],
        ),
      ),
    );
  }
}
