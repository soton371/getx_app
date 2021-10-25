import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/controllers/addtocartcontroller.dart';
import 'package:getx_app/controllers/cproductcontroller.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  var cProducts = Get.put(CartProductController());
  var addProducts = Get.put(AddToCartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Column(
        children: [
          Expanded(
              child: GetX<CartProductController>(
                builder: (controller) {
                  return ListView.builder(
                    itemCount: controller.cartProduct.length,
                      itemBuilder: (context,index){
                      var data = controller.cartProduct;
                      return Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(data[index].productName,style: TextStyle(
                                  fontWeight: FontWeight.bold
                                ),),
                                Text(data[index].productDescription),
                              ],
                            ),
                            Column(
                              children: [
                                Text(data[index].price.toString()),
                                ElevatedButton(
                                    onPressed: (){
                                      addProducts.addToCart(controller.cartProduct[index]);
                                    },
                                    child: Text('Add to cart')
                                )
                              ],
                            )
                          ],
                        ),
                      );
                      }
                  );
                }
              )
          ),
          GetX<AddToCartController>(
            builder: (controller) {
              return Text('total amount: \$ ${controller.totalPrice}');
            }
          ),
          GetX<AddToCartController>(
              builder: (controller) {
                return Text('total product: \$ ${controller.productCount.toString()}');
              }
          ),
          SizedBox(height: 100,)
        ],
      ),
    );
  }
}
