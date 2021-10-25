import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IncrementScreen extends StatelessWidget {
  const IncrementScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var i = 0.obs;

    return Scaffold(
      appBar: AppBar(
        title: Text('Increment'),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(()=>Text("total number: ${i}"),),

            ElevatedButton(
                onPressed: (){
                  i--;
                },
                child: Text('deincrement')
            ),

            ElevatedButton(
                onPressed: (){
                  i++;
                },
                child: Text('increment')
            )
          ],
        ),
      ),
    );
  }
}
