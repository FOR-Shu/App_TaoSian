import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      // It will cover 20% of our total height
      height: size.height * 0.1,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 5 + kDefaultPadding,
            ),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
              color: kTextColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                //bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: <Widget>[
                Text(
                  '     Let Get Some ',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.deepOrange.shade400,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Meal.',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.grey.shade800, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                //Image.asset("assets/images/logo.png")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
