import 'package:app_cal/components/Converter.dart';
import 'package:app_cal/components/alert.dart';
import 'package:app_cal/components/titleandsubtitle.dart';
import 'package:app_cal/ventanas/Conversion/cards.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WindowsTools extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WindowsTools();
  }
}

class _WindowsTools extends State<WindowsTools> {
  final myController = TextEditingController();
  final myController2 = TextEditingController();
  var numberInputFormatters = [
    new FilteringTextInputFormatter.allow(RegExp("[0-9]")),
  ];
  var numberInputFormatters2 = [
    new FilteringTextInputFormatter.allow(RegExp("[0-1]")),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.only(right: 30, left: 30, top: 35),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              titleandSubtitle('Conversión',
                  'Coversiones de de número entre Decimal, Octal, Hexadecimal y Decimal...'),
              Card(
                  elevation: 0.9,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                            leading:
                                Icon(Icons.confirmation_number_sharp, size: 50),
                            title: TextField(
                              inputFormatters: numberInputFormatters,
                              decoration: new InputDecoration(
                                  labelText: "Ingresa un Decimal"),
                              keyboardType: TextInputType.number,
                              controller: myController,
                              // Only numbers can be entered
                            )),
                        FlatButton(
                          onPressed: () {
                            if (myController.text == '') {
                              mostrarAlerta(context, 'Paso Algo Inesperado!',
                                  'Revisa el campo, no contiene ningun valor.');
                            } else {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return Container(
                                      margin: EdgeInsets.only(
                                          right: 30, left: 30, top: 160),
                                      padding:
                                          EdgeInsets.only(top: 20, bottom: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: <Widget>[
                                          CardCal(
                                              "HEXADECIMAL",
                                              Converterto().decimalHexa(
                                                  double.parse(
                                                      myController.text))),
                                          CardCal(
                                              "OCTAL",
                                              Converterto().decimalOctal(
                                                  double.parse(
                                                      myController.text))),
                                          CardCal(
                                              "BINARIO",
                                              Converterto().decimalBinario(
                                                  double.parse(
                                                      myController.text))),
                                          CardCal("DECIMAL", myController.text),
                                        ],
                                      ));
                                },
                              );
                            }
                          },
                          child: Text('Convertir'),
                          color: Colors.orange,
                          textColor: Colors.black54,
                        ),
                      ],
                    ),
                  )),
              Card(
                  elevation: 0.9,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                            leading:
                                Icon(Icons.connect_without_contact, size: 50),
                            title: TextField(
                              inputFormatters: numberInputFormatters2,
                              decoration: new InputDecoration(
                                  labelText: "Ingresa un Binario"),
                              keyboardType: TextInputType.number,
                              controller: myController2,
                              // Only numbers can be entered
                            )),
                        FlatButton(
                          onPressed: () {
                            if (myController2.text == '') {
                              mostrarAlerta(context, 'Paso Algo Inesperado!',
                                  'Revisa el campo, no contiene ningun valor.');
                            } else {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return Container(
                                      margin: EdgeInsets.only(
                                          right: 30, left: 30, top: 160),
                                      padding:
                                          EdgeInsets.only(top: 20, bottom: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: <Widget>[
                                          CardCal(
                                              "HEXADECIMAL",
                                              Converterto().decimalHexa(
                                                  double.parse(
                                                      myController.text))),
                                          CardCal(
                                              "OCTAL",
                                              Converterto().decimalOctal(
                                                  double.parse(
                                                      myController.text))),
                                          CardCal(
                                              "BINARIO",
                                              Converterto().decimalBinario(
                                                  double.parse(
                                                      myController.text))),
                                          CardCal("DECIMAL", myController.text),
                                        ],
                                      ));
                                },
                              );
                            }
                          },
                          child: Text('Convertir'),
                          color: Colors.orange,
                          textColor: Colors.black54,
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        )
      ],
    );
  }
}
