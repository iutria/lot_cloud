import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lot_cloud/app/ui/theme/colores.dart';

import '../widgets/item_foco.dart';
import '../widgets/item_lugares.dart';
import '../widgets/item_objeto.dart';

class InicioPage extends GetView {

  final lugares = [
    {
      'icono': BootstrapIcons.lamp,
      'nombre': 'Cuarto'
    },
    {
      'icono': BootstrapIcons.tv,
      'nombre': 'Sala'
    },
    {
      'icono': BootstrapIcons.cup,
      'nombre': 'Cocina'
    },
  ].obs;

  final focos = [
    {
      'nombre': 'BD1',
      'estado': true
    },
    {
      'nombre': 'BD2',
      'estado': false
    },
    {
      'nombre': 'BD3',
      'estado': false
    },
    {
      'nombre': 'BD4',
      'estado': false
    },
    {
      'nombre': 'BD5',
      'estado': false
    },
  ].obs;

  final objetos = [
    {
      'icono': BootstrapIcons.tv,
      'nombre': 'Televisor'
    },
    {
      'icono': BootstrapIcons.lamp,
      'nombre': 'Lampara'
    },
    {
      'icono': BootstrapIcons.pc_display,
      'nombre': 'Computador'
    },
  ].obs;
  
  InicioPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: blanco,
      appBar: AppBar(
        title: const Text('Dashboard'),
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 20
        ),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(BootstrapIcons.three_dots_vertical))
        ],
        iconTheme: const IconThemeData(
          color: Colors.black
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:Row(
              children: List.generate(
                lugares.value.length, 
                (index) => ItemLugares(lugar: lugares.value[index])
              ),
            ),
          ),
          const SizedBox(height: 20,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Obx(
              (){
                focos;
                return Row(
                  children: List.generate(
                    focos.length, 
                    (index) => ItemFoco(foco: focos[index], accion: ()=>cambiarEstado(index))
                  ),
                );
              }
            )
          ),
          SizedBox(height: 20,),
          GridView.count(
            crossAxisCount: 2,
            physics: NeverScrollableScrollPhysics(),  
            shrinkWrap: true, 
            children: List.generate(
              objetos.length, 
              (index) => ItemObjeto(objeto: objetos.value[index],),)
          )
        ],
      )
    );
  }
  
  void cambiarEstado(index) {
    bool estado = focos[index]['estado'] as bool;
    focos[index]['estado'] = !estado;
    print(estado);
    focos.refresh();
  }
}


