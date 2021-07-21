import 'package:flutter/material.dart';
import 'package:main_app/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          print('press...');
        },
        backgroundColor: kPrimaryColor,
        child: Icon(
          Icons.add,
          size: 40.0,
          color: Colors.white,
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Background.png"),
            alignment: Alignment.topCenter,
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: size.height * .1),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            style: TextStyle(
                              color: Color.fromARGB(255, 30, 30, 30),
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Noto_Serif_TC',
                              fontSize: 30,
                            ),
                            text: "食品輸入"),
                        TextSpan(
                          text: "\n 點擊卡片編輯內容",
                          style: TextStyle(
                            color: Color.fromARGB(255, 50, 50, 50),
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Noto_Serif_TC',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    //塞間隔
                    child: Container(),
                  ),
                  SizedBox(
                    child: Align(
                      alignment: Alignment(0.60, 0.80),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary:
                              Colors.teal.shade300, //background color of button
                          elevation: 8, //elevation of button
                        ),
                        onPressed: () {
                          // Add your onPressed code here!
                          print('press...');
                        },
                        child: const Text('匯入庫存'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
