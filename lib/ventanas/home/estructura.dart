import 'package:app_cal/components/titleandsubtitle.dart';
import 'package:flutter/material.dart';

class EstructuraHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _EstructuraHome();
  }
}

class _EstructuraHome extends State<EstructuraHome> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.center,
              child: Text('Bienvenido a tu Calculadora',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.center,
              child: Text(
                  '«Bienvenido a bordo. Estaremos en contacto. ¡Hola! Gracias por suscribirte para estar en contacto con Calculator. De ahora en adelante, tendrás actualizaciones regulares sobre tarifas y ofertas especiales. Y como serás de los primeros en saber, podrás volar con las mejores tarifas que ofrecemos (además de nuestra usual iluminación ambiental, WiFi, alimentos por pedido, TV, películas y más). Mientras, dirígete a nuestro sitio web para consultar las tarifas y salta hacia tu próximo escape. Este es el inicio de una relación digital sana. ¡Felicidades!»',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal)),
            ),
          ],
        )
      ],
    );
  }
}
