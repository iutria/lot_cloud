import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lot_cloud/app/ui/pages/crear_cuenta.dart';
import 'package:lot_cloud/app/ui/pages/iniciar_sesion.dart';

import '../theme/colores.dart';
import '../widgets/boton.dart';

class LoginPage extends GetView {
  
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight, // 10% of the width, so there are ten blinds.
            colors: <Color>[
              Color(0xff011640),
              Color(0xff0468BF),
            ], // red to yellow
            tileMode: TileMode.repeated, // repeats the gradient over the canvas
          ),
          image: DecorationImage(
            image: AssetImage(
              'assets/fondo.jpg'
            ),
            fit: BoxFit.cover
          ),
          // color: Color(0xfecf0f1)
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        'Bienvenido',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Lot Cloud',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(height: 20,),
                    const Text(
                      '''Lorem ipsum dolor sit amet consectetur adipisicing elit. 
Adipisci, ratione eius eum nobis exercitationem rem dicta nulla pariatur qui harum ut.''',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Boton(
                      texto: 'Iniciar sesion', 
                      color: Colors.white, 
                      colorTexto: azul[4], 
                      accion: ()=>Get.to(IniciarSesionPage())
                    ),
                    const SizedBox(height: 20,),
                    Boton(
                      texto: 'Crear cuenta', 
                      colorBorde: Colors.white, 
                      color: Colors.transparent, 
                      accion: ()=>Get.to(CrearCuentaPage())
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}
