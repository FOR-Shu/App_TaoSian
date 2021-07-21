import 'package:flutter/material.dart';

import '../../../constants.dart';

class ExpiredFood extends StatelessWidget {
  const ExpiredFood({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ExpiredFoodCard(
            title: "中華火鍋豆腐",
            person: "Kelly",
            num: 440,
            date: "21.06.10",
            press: () {
              /* Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              ); */
            },
          ),
          ExpiredFoodCard(
            title: "西蘭菜",
            person: "Kelly",
            num: 440,
            date: "21.06.10",
            press: () {
              /* Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              ); */
            },
          ),
          ExpiredFoodCard(
            title: "雞蛋",
            num: 200,
            person: "Kelly",
            date: "21.06.10",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class ExpiredFoodCard extends StatelessWidget {
  const ExpiredFoodCard({
    Key? key,
    required this.title,
    required this.person,
    required this.num,
    required this.press,
    required this.date,
  }) : super(key: key);

  final String title, person, date;
  final int num;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          //Image.asset(image),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(5, 10),
                    blurRadius: 10,
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
                          style: TextStyle(
                            color: Color.fromARGB(255, 30, 30, 30),
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Noto_Serif_TC',
                            fontSize: 18,
                          ),
                        ),
                        TextSpan(
                          text: "數量：$num g\n".toUpperCase(),
                          style: TextStyle(
                            color: Color.fromARGB(255, 241, 124, 103),
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Noto_Serif_TC',
                            fontSize: 16,
                          ),
                        ),
                        TextSpan(
                          text: "人員：$person\n".toUpperCase(),
                          style: TextStyle(
                            color: Color.fromARGB(255, 225, 226, 153),
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Noto_Serif_TC',
                            fontSize: 16,
                          ),
                        ),
                        TextSpan(
                          text: "日期：$date".toUpperCase(),
                          style: TextStyle(
                            color: Color.fromARGB(255, 184, 208, 255),
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Noto_Serif_TC',
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
