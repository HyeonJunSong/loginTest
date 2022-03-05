import "package:flutter/material.dart";
import 'package:google_sign_in/google_sign_in.dart';
import 'package:logintest/GoogleCloudConsole.dart';
import "package:get/get.dart";

class LoggedInPage extends StatelessWidget {
  final GoogleSignInAccount user;

  const LoggedInPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            child: Text(
              "LogOut",
              style: TextStyle(
                color: Colors.white
              ),
            ),
            onPressed: () async{
              await GoogleSignInApi.logOut();
              Get.back();
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: NetworkImage(user.photoUrl!),
            ),
            Text("${user.displayName!}"),
            Text("${user.email}"),
          ],
        )
      ),
    );
  }
}
