import 'package:flutter/material.dart';
import 'package:get/get.dart';
class RoutFirstScreen extends StatelessWidget {
  const RoutFirstScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String send = 'data from rout first screen';
    return Scaffold(
      appBar: AppBar(
        title: Text('Rout First'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Rout First Screen\n${Get.arguments}'),
            ElevatedButton(
                onPressed: (){
                  Get.back();
                },
                child: Text('Back to home')
            )
          ],
        ),
      ),
    );
  }
}
