import 'package:flutter/material.dart';
import 'package:main_app/screens/menu/components/title_with_more_bbtn.dart';

import 'food_kind.dart';
import 'header_with_seachbox.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          //TitleWithMoreBtn(title: "種類", press: () {}),
          //FoodKind(),
        ],
      ),
    );
  }
}
