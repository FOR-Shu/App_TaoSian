import 'package:flutter/material.dart';
import 'package:main_app/constants.dart';

import 'header_with_sizebox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSizeBox(size: size),
        ],
      ),
    );
  }
}
