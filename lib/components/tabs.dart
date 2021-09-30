import 'dart:ui';

import 'package:app_cal/ventanas/home/estructura.dart';
import 'package:app_cal/ventanas/OperacionesLogicas/estructura.dart';
import 'package:app_cal/ventanas/OperacionesMatematicas/estructura.dart';
import 'package:app_cal/ventanas/Conversion/windows.dart';
import 'package:flutter/material.dart';

class WindowsTabs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WindowsTabs();
  }
}

class _WindowsTabs extends State<WindowsTabs> {
  @override
  Widget build(BuildContext context) {
    var tabBar = TabBar(
      unselectedLabelColor: Colors.redAccent,
      indicator: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.redAccent, Colors.orange]),
        borderRadius: BorderRadius.circular(50),
        color: Colors.redAccent,
      ),
      tabs: [
        Tab(icon: Icon(Icons.home)),
        Tab(icon: Icon(Icons.redo)),
        Tab(icon: Icon(Icons.border_all)),
        Tab(icon: Icon(Icons.border_style))
      ],
    );
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.adjust_sharp),
            title: Text("Calculadora del Programador"),
            backgroundColor: Colors.redAccent,
            elevation: 1.5,
            toolbarHeight: 100,
            centerTitle: true,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient:
                    LinearGradient(colors: [Colors.redAccent, Colors.orange]),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
              ),
            ),
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: const Radius.circular(25))),
          ),
          body: TabBarView(
            children: [
              EstructuraHome(),
              WindowsTools(),
              EstructuraMatematica(),
              EstructuraLogica(),
            ],
          ),
          bottomNavigationBar: tabBar,
        ));
  }
}
