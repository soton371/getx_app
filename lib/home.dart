import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:getx_app/controllers/productcontroller.dart';

class HomeScreen extends StatelessWidget {
  //const HomeScreen({Key key}) : super(key: key);

  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        actions: [
          Icon(Icons.shopping_bag)
        ],
      ),
      body: Column(
        children: [
          Text('ShopX',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          Expanded(
              child: Obx(
                  ()=> StaggeredGridView.countBuilder(
                  crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    itemCount: productController.productList.length,
                    itemBuilder: (context,index){

                    var data = productController.productList;
                      return Container(
                        height: 150,
                        width: 150,
                        color: Colors.grey,
                        child: Card(
                            child: Column(
                              children: [
                                Image.network(data[index].imageLink,height: 80,),
                                Text(data[index].name),
                              ],
                            )
                        ),
                      );
                    },
                    staggeredTileBuilder: (index)=>StaggeredTile.fit(1)
                ),
              )
          )
        ],
      ),
    );
  }
}
