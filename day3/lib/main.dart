import 'package:day3/page/home/main_food_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/popular_product_controller.dart';
import 'helper/dependenci.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await dep.SetUpBinding().dependencies();
  runApp(const MyApp());
}

class SetUpBinding {}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainFoodpage(),
    );
  }
}
