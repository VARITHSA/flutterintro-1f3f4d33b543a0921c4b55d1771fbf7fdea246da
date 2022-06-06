import 'package:flutter/material.dart';
import 'package:intro/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';
import '../utils/routes.dart';

class HomeDetails extends StatelessWidget {
  final Item catalog;
  const HomeDetails({Key? key, required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.theme.canvasColor,
      bottomNavigationBar: Container(
        color: context.theme.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "₹${catalog.price}".text.bold.red800.xl4.make(),
            ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.detailsRoute);
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          context.theme.buttonColor,
                        ),
                        shape:
                            MaterialStateProperty.all(const StadiumBorder())),
                    child: "Add to cart".text.xl.make())
                .wh(120, 40)
          ],
        ).pOnly(right: 8.0).p12(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                    tag: Key(catalog.id.toString()),
                    child: Image.network(catalog.image))
                .h32(context),
            Expanded(
              child: VxArc(
                height: 26.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                    color: context.theme.cardColor,
                    width: context.screenWidth,
                    child: Column(
                      children: [
                        catalog.name.text.bold.xl4
                            .color(context.accentColor)
                            .make(),
                        catalog.disc.text
                            .textStyle(context.captionStyle)
                            .xl
                            .make(),
                        10.heightBox
                      ],
                    ).py64()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
