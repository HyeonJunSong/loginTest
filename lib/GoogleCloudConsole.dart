import "package:flutter/material.dart";
import 'package:get/get.dart';
import "package:google_sign_in/google_sign_in.dart";
import 'package:logintest/LoggedIn.dart';

class GoogleCloudConsolePage extends StatelessWidget {
  const GoogleCloudConsolePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text("Google Sign In"),
              onPressed: (){
                signIn();
              },
            ),
          ],
        )
      ),
    );
  }

  Future signIn() async{
    final user = await GoogleSignInApi.login();

    if(user == null){
      GetSnackBar(
        title: "Sign in Failed",
      );
    }
    else{
      Get.to(() => LoggedInPage(user: user));
    }
  }
}

class GoogleSignInApi{
  static final _googleSignIn = GoogleSignIn();

  static Future<GoogleSignInAccount?> login() => _googleSignIn.signIn();

  static Future logOut() => _googleSignIn.disconnect();
}