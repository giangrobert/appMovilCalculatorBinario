import 'package:app_cal/components/Converter.dart';
import 'package:app_cal/ventanas/Conversion/cards.dart';

import 'package:flutter/material.dart';

class WindowsTools extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WindowsTools();
  }
}

class _WindowsTools extends State<WindowsTools> {
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 30, left: 30, top: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Card(
            elevation: 0.9,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                    leading: Icon(Icons.confirmation_number_sharp, size: 50),
                    title: TextField(
                      decoration:
                          new InputDecoration(labelText: "Ingresa un Decimal"),
                      keyboardType: TextInputType.number,
                      controller: myController,
                      // Only numbers can be entered
                    )),
                FlatButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Container(
                            margin:
                                EdgeInsets.only(right: 30, left: 30, top: 160),
                            padding: EdgeInsets.only(top: 20, bottom: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                CardCal(
                                    "HEXADECIMAL",
                                    Converterto().decimalHexa(
                                        double.parse(myController.text))),
                                CardCal(
                                    "OCTAL",
                                    Converterto().decimalOctal(
                                        double.parse(myController.text))),
                                CardCal(
                                    "BINARIO",
                                    Converterto().decimalBinario(
                                        double.parse(myController.text))),
                                        CardCal(
                                    "DECIMAL",
                                    myController.text),
                              ],
                            ));
                      },
                    );
                  },
                  child: Text('Convertir'),
                  color: Colors.orange,
                  textColor: Colors.black54,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
