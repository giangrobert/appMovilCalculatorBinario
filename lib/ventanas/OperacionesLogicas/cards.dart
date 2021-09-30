import 'package:flutter/material.dart';

class CardCal extends StatelessWidget {
  String operation = "";
  String value = "";

  CardCal(this.operation, this.value);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
      children: [
        Text(this.value,
            style: TextStyle(
                color: Colors.black54,
                fontSize: 32.0,
                fontWeight: FontWeight.bold)),
        Text(this.operation,
            style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 22.0,
            )),
      ],
    )
      ),
        );
  }
}
