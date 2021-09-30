import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

void mostrarAlerta(BuildContext context, String titulo, String text1) {
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: Text('$titulo'),
            content: Text('$text1'),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Ok'),
                color: Colors.orangeAccent,
              ),
            ],
          ));
}
