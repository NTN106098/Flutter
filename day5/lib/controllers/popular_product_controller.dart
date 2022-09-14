import 'package:day5/data/reponsitory/popular_product_repo.dart';
import 'package:day5/models/products_models.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<ProductModel> _popularProductList = [];
  List<ProductModel> get PopularProductList => _popularProductList;

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;
  Future<void> getPopularProductList() async {
    Response reponse = await popularProductRepo.getPopularProductList();

    try {
      if (reponse.statusCode == 200) {
        print("Got products from the server");
        _popularProductList = [];
        _popularProductList.addAll(Product.fromJson(reponse.body).products);
        _isLoaded = true;
        update();
      } else {
        print("Error occurred and the error is" + reponse.body);
      }
    } catch (e) {
      print("Error in the controller is" + e.toString());
    }
  }
}
