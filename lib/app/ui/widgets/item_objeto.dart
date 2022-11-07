
import 'package:flutter/material.dart';

import '../theme/colores.dart';

class ItemObjeto extends StatelessWidget {

  final Map objeto;

  const ItemObjeto({
    Key? key, required this.objeto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: blanco,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 3,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        height: 150,
        width: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              objeto['icono'],
              size: 50,
            ),
            const SizedBox(height: 10,),
            Text(
              objeto['nombre'],
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      );
  }
}