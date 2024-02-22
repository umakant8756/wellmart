import 'package:flutter/material.dart';

class Onboarding3 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            SizedBox(
              height: 120,
            ),
            Container(
              child: Image.asset("assets/images/2.png"),
            ),
            SizedBox(
              height:57,
            ),
            
            Container(
              child: Text(
                "Demo for medicine in-take",
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
              height: 110,
            ),
         
          ],
        ),
      ),
    );
  }
}
