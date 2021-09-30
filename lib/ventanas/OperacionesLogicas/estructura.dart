import 'package:app_cal/ventanas/OperacionesLogicas/obtenerResult.dart';
import 'package:app_cal/ventanas/OperacionesLogicas/cards.dart';
import 'package:app_cal/ventanas/OperacionesLogicas/alert.dart';
import 'package:flutter/material.dart';
import 'Dart:io';

class EstructuraLogica extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EstructuraLogica();
  }
}

class _EstructuraLogica extends State<EstructuraLogica> {
  final myController = TextEditingController();
  final myController2 = TextEditingController();
  String _result = '';
  final ButtonStyle style =
      ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),
        
      );
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20, left: 20, top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
              elevation: 0.9,
              child: Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
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
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextField(
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
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                      style: style,
                      
                      onPressed: () {
                        if (myController.text=='' || myController2.text=='' || !myController2.text.contains(RegExp(r'\1+\0')) || !myController.text.contains(RegExp(r'\0'))) {
                            mostrarAlerta(context);
                        
                            
                          
                        }
                        
                        setState(() {
                          
                          String antResult = ObtenerResultLogicas().R_AND(myController.text, myController2.text);
                          _result = antResult;
                                            
                        });
                      },
                      child: const Text('AND'),
                    ),
                    
                    ElevatedButton(
                      style: style,
                      onPressed: () {
                        setState(() {
                         String antResult = ObtenerResultLogicas().R_OR(myController.text, myController2.text);
                          _result = antResult;
                                            
                        });
                      },
                      child: const Text('OR'),
                    ),
                    ElevatedButton(
                      style: style,
                      onPressed: () {
                        setState(() {
                         String antResult = ObtenerResultLogicas().R_XOR(myController.text, myController2.text);
                          _result = antResult;
                                            
                        });
                      },
                      child: const Text('XOR'),
                    ),
                      ],
                    ), 
                  ],
                ),
              )),
              SizedBox(
                      height: 5,
                    ),
              CardCal('Resultado', _result),
        ],
      ),
    );
  }
}
