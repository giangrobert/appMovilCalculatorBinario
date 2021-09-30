import 'package:flutter/material.dart';

class CardCal extends StatelessWidget {
  String Tipo_Convert = "";
  String Value_Convert = "";

  CardCal(this.Tipo_Convert, this.Value_Convert);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        Text(this.Value_Convert,
            style: TextStyle(
                color: Colors.black54,
                fontSize: 32.0,
                fontWeight: FontWeight.bold)),
        Text(this.Tipo_Convert,
            style: TextStyle(
              color: Colors.black26,
              fontSize: 22.0,
            )),
      ],
    ));
  }
}