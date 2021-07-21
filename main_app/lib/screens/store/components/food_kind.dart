import 'package:flutter/material.dart';

import '../../../constants.dart';

class FoodKind extends StatelessWidget {
  const FoodKind({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          FoodKindCard(
            image: "assets/images/image_1.png",
            title: "蔬菜類",
            num: 10,
            press: () {
              /* Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              ); */
            },
          ),
          FoodKindCard(
            image: "assets/images/image_1.png",
            title: "水果類",
            num: 8,
            press: () {
              /* Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              ); */
            },
          ),
          FoodKindCard(
            image: "assets/images/image_1.png",
            title: "肉類",
            num: 20,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class FoodKindCard extends StatelessWidget {
  const FoodKindCard({
    Key? key,
    required this.image,
    required this.title,
    required this.num,
    required this.press,
  }) : super(key: key);

  final String image, title;
  final int num;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 3,
        bottom: kDefaultPadding * 1.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(2, 5),
                    blurRadius: 30,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '數量：$num',
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
