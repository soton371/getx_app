import 'package:get/get.dart';
import 'package:getx_app/models/cproducts.dart';

class CartProductController extends GetxController{
  var cartProduct = List<CartProduct>().obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchData();
  }

  void fetchData() async{
    await Future.delayed(Duration(seconds: 1));
    var productResult = [
      CartProduct(
          id: 1,
          price: 30,
          productDescription: 'some description about product',
          productImage: 'abd',
          productName: 'FirstProd'
      ),
    CartProduct(
      id: 2,
      price: 40,
    productDescription: 'some description about product',
    productImage: 'abd',
    productName: 'SecProd'),
    CartProduct(
    id: 3,
    price: 49.5,
    productDescription: 'some description about product',
    productImage: 'abd',
    productName: 'ThirdProd'),
    ];

    cartProduct.value = productResult;
  }
}