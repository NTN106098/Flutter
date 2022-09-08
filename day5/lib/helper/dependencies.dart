import 'package:day5/data/reponsitory/popular_product_repo.dart';
import 'package:get/get.dart';
import '../controllers/popular_product_controller.dart';
import '../data/api/api_client.dart';
import '../utils/app_constants.dart';

class SetUpBinding extends Bindings {
  Future close() async {
    Get.reset();
  }

  @override
  Future dependencies() async {
    // TODO: implement dependencies
    //api client
    Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));
    //reponse
    Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

    //controller
    Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  }
}
