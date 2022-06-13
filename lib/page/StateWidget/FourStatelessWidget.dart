import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter02/page/StateWidget/FourWidgets/FourViewLarge.dart';
import 'package:flutter02/page/StateWidget/FourWidgets/FourViewSmall.dart';

class FourStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("第四页分屏")),
        body: OrientationBuilder(
            builder: (context, orientation) => LayoutBuilder(
                builder: (context, constraints) =>
                    _contentBuild(orientation, context, constraints))));
  }

  Widget _contentBuild(Orientation orientation, BuildContext context,
      BoxConstraints constraints) {
    double breakPointWidth = orientation == Orientation.portrait ? 600 : 800;
    if (constraints.maxWidth < breakPointWidth) {
      return FourViewSmall(Colors.red);
    } else {
      return FourViewLarge();
    }
  }
}
