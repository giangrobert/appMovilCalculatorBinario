import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

void mostrarAlerta(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: Text('Error!!!'),
            content: Text('Ingresa los números Binarios de manera correctamente'),
            actions: <Widget>[
              FlatButton(onPressed: (){
                Navigator.of(context).pop();
              }, child: Text('Ok'), color: Colors.orangeAccent,),
            ],
          ));
}
