import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/controllers/gsignincontroller.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GSignInScreen extends StatelessWidget {
  const GSignInScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(SignInController());
    return Scaffold(
      body: Center(
        child: Obx((){
          if(controller.googleAccount.value == null)
            return ElevatedButton(
                onPressed: (){
                  controller.signIn();
                },
                child: Text('SignIn with google')
            );
          else
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: Image.network(controller.googleAccount.value?.photoUrl??'').image,
                    radius: 100,
                  ),
                  Text(controller.googleAccount.value?.displayName??''),
                  Text(controller.googleAccount.value?.email??''),
                  ElevatedButton(
                      onPressed: (){
                        controller.signOut();
                      },
                      child: Text('log out')
                  ),
                ],
              ),
            );
        })
      ),
    );
  }
}
