import 'package:get/get.dart';
import 'package:getx_app/models/cproducts.dart';

class AddToCartController extends GetxController{
  var addProduct = List<CartProduct>().obs;
  int get productCount => addProduct.length;
  double get totalPrice => addProduct.fold(0, (previousValue, element) => previousValue+element.price);

  addToCart(CartProduct product){
    addProduct.add(product);
  }
}