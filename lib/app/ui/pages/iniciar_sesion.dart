import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lot_cloud/app/ui/pages/crear_cuenta.dart';
import 'package:lot_cloud/app/ui/theme/colores.dart';
import 'package:lot_cloud/app/ui/widgets/boton.dart';
import 'package:lot_cloud/app/ui/widgets/contenedor.dart';

import '../widgets/input.dart';
import 'inicio.dart';

class IniciarSesionPage extends GetView {

  const IniciarSesionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Contenedor(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: const [
                Text(
                  'Bienvenido!',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: azul[1]!.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: ()=>Get.back(), 
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: azul[2],
                        )
                      ),
                      const Text('Atras')
                    ],
                  ),
                  Input(
                    texto: 'Correo',
                    icono: BootstrapIcons.envelope,
                  ),
                  Input(
                    texto: 'Contraseña',
                    icono: BootstrapIcons.lock,
                    esClave: true,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: (){}, 
                        child: Text('Olvide mi contraseña!', style: TextStyle(color: azul[2]),)
                      )
                    ],
                  ),
                  Boton(
                    color: azul[2],
                    texto: 'Iniciar Sesion',
                    accion: ()=>Get.offAll(InicioPage()),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('ó'),
                  ),
                  Boton(
                    color: Colors.transparent,
                    texto: 'Crear Cuenta',
                    colorBorde: azul[2],
                    colorTexto: azul[2],
                    accion: ()=>Get.to(CrearCuentaPage()),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
