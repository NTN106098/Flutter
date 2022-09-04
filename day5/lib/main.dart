
import 'package:day5/pages/food/recommended_food_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/popular_product_controller.dart';
import 'helper/dependencies.dart' as dep;

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    // Get.put(PopularProductController(popularProductRepo: null).getPopularProductList());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RecommenedFoodDetail(),
    );
  }
}

