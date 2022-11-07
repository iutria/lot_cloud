import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lot_cloud/app/ui/pages/iniciar_sesion.dart';
import 'package:lot_cloud/app/ui/theme/colores.dart';
import 'package:lot_cloud/app/ui/widgets/boton.dart';

import '../widgets/contenedor.dart';
import '../widgets/input.dart';

class CrearCuentaPage extends GetView {

  const CrearCuentaPage({super.key});

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
                  'Crear\nCuenta!',
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
                crossAxisAlignment: CrossAxisAlignment.start,
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
                      Text('Atras')
                    ],
                  ),
                  Input(
                    texto: 'Nombre',
                    icono: BootstrapIcons.person,
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
                  SizedBox(height: 10,),
                  Boton(
                    color: azul[2],
                    texto: 'Crear Cuenta',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                       Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text('ó'),
                      ),
                    ],
                  ),
                  Boton(
                    color: Colors.transparent,
                    texto: 'Iniciar Sesion',
                    colorBorde: azul[2],
                    colorTexto: azul[2],
                    accion: ()=>Get.to(IniciarSesionPage()),
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

