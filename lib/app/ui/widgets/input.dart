
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Input extends StatelessWidget {

  final String? texto;
  final IconData? icono;
  final bool? esClave;
  final TextEditingController? controller;

  final verClave = true.obs;

  Input({
    Key? key, this.texto, this.icono, this.controller, this.esClave,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      verClave.value = esClave == null ? false : verClave.value;
      return TextField(
        controller: controller,
        obscureText: verClave.value,
        decoration: InputDecoration(
          labelText: texto,
          prefixIcon: Icon(icono),
          suffixIcon: IconButton(
            icon: Icon(ponerIcono) ,
            onPressed: () {
              verClave.value = !verClave.value;
            },
          ),
        ),
      ); 
    });
  }
  
  IconData? get ponerIcono{
    if(esClave==null) return null;
    return !verClave.value ? BootstrapIcons.eye_slash :  BootstrapIcons.eye;   
  }
}