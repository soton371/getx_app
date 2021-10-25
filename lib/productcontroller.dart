import 'package:get/state_manager.dart';
import 'package:getx_app/models/product.dart';
import 'package:getx_app/services/remoteservices.dart';

class ProductController extends GetxController{
  var productList = List<Product>().obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    var products = await RemoteServices.fetchProducts();
    if(products != null){
      productList.value = products;
    }
  }
}
