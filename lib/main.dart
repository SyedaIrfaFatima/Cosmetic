import 'package:cosme/admin/adim_catogories.dart';
import 'package:cosme/admin/admin_dashboard.dart';
import 'package:cosme/catogries/skincare.dart';
import 'package:cosme/firebase_options.dart';
import 'package:cosme/home/info_page.dart';
import 'package:cosme/home/product_home_list/product_list_items.dart';
import 'package:cosme/widget/bottom_navigation.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // await Firebase.initializeApp().then((value) => Get.put(AuthController()));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Categories(),
    );
  }
}
