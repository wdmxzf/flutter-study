import 'package:flutter/material.dart';

class FourViewLarge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(children: [
      Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: Text("bababala"),
          )),
      Expanded(
          flex: 3,
          child: Container(
              color: Colors.green,
              child: Column(children: [
                Expanded(child: Text("lager-large")),
              ])))
    ]));
  }
}
