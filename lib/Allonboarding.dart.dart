import 'package:flutter/material.dart';
import 'package:wellmarts_app/LoginPage.dart';
import 'package:wellmarts_app/Onboarding1.dart';
import 'package:wellmarts_app/Onboarding2.dart';
import 'package:wellmarts_app/Onboarding3.dart';

class Allonboarding extends StatefulWidget {
  @override
  State<Allonboarding> createState() => _Allonboarding2State();
}

PageController button = new PageController();
int currentIndex = 0;
var next = 0;

class _Allonboarding2State extends State<Allonboarding> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: button,
            onPageChanged: (n) {
              currentIndex = n;
              setState(() {});
            },
            children: [
              Onboarding1(),
              Onboarding2(),
              Onboarding3(),
            ],
          ),
          Positioned(
            right: 25,
            top: 50,
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Text(
                "Skip",
                style: TextStyle(
                  color: Color.fromRGBO(83, 87, 99, 1),
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Positioned(
            top: 450,
            left: 150,
            right: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (int i = 0; i < 3; i++)
                  AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    width: (currentIndex == i) ? 10 : 8,
                    height: (currentIndex == i) ? 10 : 8,
                    decoration: ShapeDecoration(
                        color: (currentIndex == i) ? Colors.black : Colors.grey,
                        shape: OvalBorder()),
                  ),
              ],
            ),
          ),
          Positioned(
            top: 680,
            left: 100,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(219, 58, 62, 1),
              ),
              child: Container(
                height: 53,
                width: 173,
                color: Color.fromRGBO(219, 58, 62, 1),
                child: Center(
                    child: Text(
                  "Next",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                )),
              ),
              onPressed: () {
                button.nextPage(
                    duration: Duration(milliseconds: 200),
                    curve: Curves.linear);
              },
            ),
          ),
        ],
      ),
    );
  }
}
