
import 'package:flutter/material.dart';

import '../theme/colores.dart';

class ItemLugares extends StatelessWidget {
  const ItemLugares({
    Key? key,
    required this.lugar,
  }) : super(key: key);

  final Map lugar;

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
            lugar['icono'],
            size: 50,
          ),
          const SizedBox(height: 10,),
          Text(
            lugar['nombre'],
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}