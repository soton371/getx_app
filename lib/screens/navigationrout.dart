import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/screens/routfirst.dart';

class NavigationRoutScreen extends StatelessWidget {
  const NavigationRoutScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Rout'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(RoutFirstScreen(),arguments: 'data from navigation rout screen');
              },
              child: Text("Rout first"),
            ),

          ],
        ),
      ),
    );
  }
}
