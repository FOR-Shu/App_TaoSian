import 'package:flutter/material.dart';

import 'ExpiredFood.dart';
import 'header_with_seachbox.dart';
import 'title_with_more_bbtn.dart';
import 'food_kind.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        HeaderWithSearchBox(size: size),
        TitleWithMoreBtn(title: "種類", press: () {}),
        //FoodKind(),
        TitleWithMoreBtn(title: "即將過期", press: () {}),
        //ExpiredFood(),
        TitleWithMoreBtn(title: "未歸類之食材", press: () {}),
      ],
    );
  }
}
