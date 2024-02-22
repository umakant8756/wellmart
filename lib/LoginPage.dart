import 'package:flutter/material.dart';
import 'package:wellmarts_app/OtpVerification.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              height: 142,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset("assets/images/1.png"),
                  Positioned(
                    right: 0,
                    top: 30,
                    child: Text(
                      "Skip",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: Color.fromRGBO(83, 87, 99, 1),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Text(
              "Enter Phone number",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 54,
              child: TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  contentPadding: EdgeInsets.zero,
                  hintText: ' Mobile no',
                  prefixIcon: Container(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    width: 47,
                    alignment: Alignment.center,
                    child: Text(
                      "+91",
                    ),
                    decoration: BoxDecoration(
                        border: Border(right: BorderSide(color: Colors.grey))),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            Expanded(child: SizedBox()),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OtpVerification()));
              },
              child: Container(
                height: 53,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(219, 58, 62, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text(
                  "Get OTP",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                )),
              ),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
