import 'package:flutter/material.dart';

class Onboarding1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              child: Image.asset("assets/images/B.png"),
            ),
            SizedBox(
              height:72,
            ),
            Container(
              child: Text(
                "medicine service in wide range area",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 12.52,
            ),
            Container(
              child: Text(
                "Lorem ipsum is a placeholder text commonly used to demonstrate the visual.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            
          ],
        ),
      ),
    );
  }
}
