
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lot_cloud/app/ui/pages/login.dart';

class App extends StatelessWidget {
  
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lot Cloud',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage()
    );
  }
}
