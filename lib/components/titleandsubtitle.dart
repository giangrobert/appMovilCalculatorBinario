import 'package:flutter/material.dart';

class titleandSubtitle extends StatelessWidget {
  String title = "";
  String subtitle = "";

  titleandSubtitle(this.title, this.subtitle);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(this.title,
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold)),
            Text(this.subtitle,
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 12.0,
                )),
          ],
        ));
  }
}
