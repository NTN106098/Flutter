import 'package:day5/data/reponsitory/popular_product_repo.dart';
import 'package:get/get.dart';
import '../controllers/popular_product_controller.dart';
import '../data/api/api_client.dart';
import '../widgets/app_constants.dart';

Future<void> init()async{
  //api client
    Get.lazyPut(() => ApiClient(appBaseUrl:"http://mvs.bslmeiyu.com"));
    //reponse
    Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

    //controller
    Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));

}