import 'package:flutter/material.dart';

class FourViewSmall extends StatefulWidget {
  final Color profileIconColor;

  FourViewSmall(this.profileIconColor);

  @override
  State<StatefulWidget> createState() {
    return _FourViewState();
  }
}

class _FourViewState extends State<FourViewSmall> {
  List<String> textArray = ["one", "two"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("fourViewSmall")),
      body: Container(
        color: Colors.white,
        child: Column(
          children: textArray.map((e) => Text(e)).toList(),
        ),
      ),
    );
  }
}
