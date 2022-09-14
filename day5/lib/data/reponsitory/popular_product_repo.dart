import 'package:day5/data/api/api_client.dart';
import 'package:day5/utils/app_constants.dart';
import 'package:get/get.dart';
// import 'package:http/http.dart' as http;

class PopularProductRepo extends GetxService {
  final ApiClient apiClient;
  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async {
    // return await apiClient.getData(AppConstants.POPULAR_PRODUCTS_URI);
    return await apiClient.getData("https://www.dbestech.com/api/product/list");
  }
  // Future<http.Response> getPopularProductList() async {
  //   return http.get(Uri.parse(AppConstants.POPULAR_PRODUCTS_URI));
  // }
}
