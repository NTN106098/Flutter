import 'package:day3/data/api/api_client.dart';
import 'package:get/get.dart';

import '../controller/popular_product_controller.dart';
import '../responsitory/populart_product_repo.dart';

Future<void> init() async {
  Get.lazyPut(() => ApiClient(appBaseUrl: ""));

  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //controller
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
