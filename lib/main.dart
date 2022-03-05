import "package:flutter/material.dart";
import "package:get/get.dart";
import 'package:logintest/GoogleCloudConsole.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text(
                "Google"
              ),
              onPressed: (){
                Get.to(() => GoogleSignInPage());
              },
            ),
            ElevatedButton(
              child: Text("Google Cloud Console"),
              onPressed: (){
                Get.to(() => GoogleCloudConsolePage());
              },
            )
          ],
        ),
      ),
    );
  }
}

////////////////////////////////////////////////////////////////////////////////

class GoogleSignInPage extends StatelessWidget {
  const GoogleSignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GoogleSignInPage"),
      ),
    );
  }
}