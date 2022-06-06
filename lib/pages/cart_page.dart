import 'package:flutter/material.dart';
import 'package:intro/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.canvasColor,
      appBar: AppBar(
          backgroundColor: context.theme.canvasColor,
          title: Text(
            "cart",
            style: TextStyle(color: context.theme.accentColor),
          )),
    );
  }
}
