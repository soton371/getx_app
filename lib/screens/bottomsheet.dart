import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetScreen extends StatelessWidget {
  const BottomSheetScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Get.bottomSheet(
              Container(
                child: Wrap(
                  children: [
                    ListTile(
                      title: Text('Light'),
                      onTap: ()=>Get.changeTheme(ThemeData.light()),
                    ),
                    ListTile(
                      title: Text('Dark'),
                      onTap: ()=>Get.changeTheme(ThemeData.dark()),
                    ),
                  ],
                ),
              ),
            );
          },
          child: Text("Bottom Sheet"),
        ),
      ),
    );
  }
}
