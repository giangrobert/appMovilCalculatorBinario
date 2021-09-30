import 'package:app_cal/components/Converter.dart';
import 'package:app_cal/components/OperacioneBinarias.dart';
import 'package:app_cal/components/alert.dart';
import 'package:app_cal/components/titleandsubtitle.dart';
import 'package:app_cal/ventanas/OperacionesMatematicas/obtenerResult.dart';
import 'package:app_cal/ventanas/OperacionesMatematicas/cards.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EstructuraMatematica extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EstructuraMatematica();
  }
}

class _EstructuraMatematica extends State<EstructuraMatematica> {
  var numberInputFormatters = [
    new FilteringTextInputFormatter.allow(RegExp("[0-1]")),
  ];
  final myController = TextEditingController();
  final myController2 = TextEditingController();
  String _volume = '';
  final ButtonStyle style = ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),
  );

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.only(right: 20, left: 20, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              titleandSubtitle('Matemática',
                  'Operaciones Matemáticas entre números binarios'),
              Card(
                  elevation: 0.9,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextField(
                          inputFormatters: numberInputFormatters,
                          decoration: InputDecoration(
                              hintText: "Primer Binario",
                              filled: true,
                              fillColor: Colors.grey[200],
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none)),

                          keyboardType: TextInputType.number,
                          controller: myController,
                          textAlign: TextAlign.center,
                          // Only numbers can be entered
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextField(
                          inputFormatters: numberInputFormatters,
                          decoration: InputDecoration(
                              hintText: "Segundo Binario",
                              filled: true,
                              fillColor: Colors.grey[200],
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none)),

                          keyboardType: TextInputType.number,
                          controller: myController2,
                          textAlign: TextAlign.center,
                          // Only numbers can be entered
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              style: style,
                              onPressed: () {
                                if (myController2.text == '' ||
                                    myController.text == '') {
                                  mostrarAlerta(context, 'No se puede Sumar!!',
                                      'Ingresa los números Binarios');
                                } else {
                                  setState(() {
                                    _volume = ObtenerResult().SumaBinaria(
                                        myController.text.toString(),
                                        myController2.text.toString());
                                  });
                                }
                              },
                              child: const Text('+'),
                            ),
                            ElevatedButton(
                              style: style,
                              onPressed: () {
                                if (myController2.text == '' ||
                                    myController.text == '') {
                                  mostrarAlerta(context, 'Error!!',
                                      'Ingresa los números Binarios');
                                } else {
                                  setState(() {
                                    _volume = ObtenerResult().RestaBinaria(
                                        myController.text.toString(),
                                        myController2.text.toString());
                                  });
                                }
                              },
                              child: const Text('-'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
              CardCal('Resultado', _volume),
            ],
          ),
        )
      ],
    );
  }
}
