
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';

import '../theme/colores.dart';

class ItemFoco extends StatelessWidget {

  final Map foco;
  final accion;

  const ItemFoco({
    Key? key, required this.foco, this.accion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: accion,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: foco['estado'] ? const Color(0xff16a085) : blanco,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Icon(BootstrapIcons.lightbulb, color: foco['estado'] ? Colors.white : Colors.black,),
          ),
          SizedBox(
            width: 50,
            child: Text(
              foco['nombre'],
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}