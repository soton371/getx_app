import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              Get.snackbar('Snack bar title', 'snack bar message',
              snackPosition: SnackPosition.BOTTOM
              );
            },
            child: Text("Snack Bar"),
        ),
      ),
    );
  }
}
