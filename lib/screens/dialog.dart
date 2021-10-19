import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogScreen extends StatelessWidget {
  const DialogScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Get.defaultDialog();
          },
          child: Text("Show Dialog"),
        ),
      ),
    );
  }
}
