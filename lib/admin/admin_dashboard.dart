import 'package:cosme/Registeration_page.dart';
import 'package:cosme/utils/color.dart';
import 'package:cosme/widget/big_text.dart';
import 'package:cosme/widget/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({Key? key}) : super(key: key);

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 40),
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: AppColor.mainColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BigText(
                        text: 'Hi!Malik',
                        color: Colors.white,
                      ),
                      BigText(
                        text: '03/jun/2024',
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      BigText(
                        text: 'Good Morning',
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => registeration()));
                        },
                        child: Column(
                          children: [
                            Image(
                              image:
                                  AssetImage('assets/images/shopping-bag.png'),
                            ),
                            BigText(
                              text: 'product',
                              color: Colors.black,
                            ),
                          ],
                        ),
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/images/shopping-bag.png'),
                        ),
                        BigText(
                          text: 'order',
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
