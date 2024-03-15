import 'package:cosme/home/product_home_list/product_list_items.dart';
import 'package:cosme/utils/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widget/app_icon.dart';
import '../../widget/big_text.dart';
import '../../widget/extended_text.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.arrow_back_ios,
                  ontap: () {
                    print("Tapped on the clear icon");
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => ProductListItem()),
                    );
                  },
                ),
                AppIcon(
                  icon: Icons.favorite,
                  iconColor: Colors.deepOrange,
                  ontap: () {
                    print("Tapped on the clear icon");
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => ProductListItem()),
                    );
                  },
                ),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(
                  child: BigText(
                    size: 18,
                    text: "Everything is here for your beauty needs",
                  ),
                ),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
              ),
            ),
            backgroundColor: AppColor.mainColor,
            expandedHeight: 500,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                padding: EdgeInsets.only(top: 100),
                child: Image.asset(
                  "assets/images/mosturizer.png",
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(children: [
              Container(
                child: ExtendedText(
                    text:
                        "Indulge in the ritual of skincare, where each product whispers secrets of renewal to your skin. From cleansing to moisturizing, every step is a graceful move towards radiance and confidence. With the precision of an artist, blend foundation seamlessly for a flawless canvas. Adorn lips with hues ranging from soft pink to bold crimson, expressing your unique beauty. Step into the world, your beauty becomes a proclamation of your inner light shining brightly."),
                margin: EdgeInsets.only(
                  left: 20,
                ),
              ),
            ]),
          )
        ],
      ),

      // child: Text,
    );
  }
}
