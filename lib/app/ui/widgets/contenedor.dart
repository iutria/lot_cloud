
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Contenedor extends StatelessWidget {

  final Widget? child;

  const Contenedor({
    Key? key, this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/fondo.jpg'
            ),
            fit: BoxFit.cover
          )
        ),
        width: Get.width,
        height: Get.height,
        padding: const EdgeInsets.all(20),
        child: child
      ),
    );
  }
}