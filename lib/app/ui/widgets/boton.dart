
import 'package:flutter/material.dart';

class Boton extends StatelessWidget {

  final String? texto;
  final Color? color;
  final Color? colorBorde;
  final Color? colorTexto;
  final VoidCallback? accion;

  const Boton({
    Key? key, 
    this.texto, 
    this.color, 
    this.colorBorde, 
    this.accion, 
    this.colorTexto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: accion,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: color ?? Colors.blue,
          border: Border.all(width: 2,color: colorBorde ?? color ?? Colors.blue),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              texto??'',
              style: TextStyle(
                fontSize: 20,
                color: colorTexto ?? Colors.white
              ),
            ),
          ],
        ),
      ),
    );
  }
}