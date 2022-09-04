
import 'package:day5/data/reponsitory/popular_product_repo.dart';
import 'package:day5/models/products_models.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController  {
  final PopularProductRepo popularProductRepo;
  PopularProductController({ required this.popularProductRepo});
  List<ProductModel> _popularProductList = [];
  List<ProductModel> get PopularProductList => _popularProductList;
  
  Future<void> getPopularProductList() async {
    Response reponse = await popularProductRepo.getPopularProductList();
    
    try{

      if(reponse.statusCode==200) {
        print("go products");
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(reponse.body).products);
      update();

    }else{
      print("No products");
    }
    }catch(e) {
      print("Error in the controller is" + e.toString());
    }
  }
}