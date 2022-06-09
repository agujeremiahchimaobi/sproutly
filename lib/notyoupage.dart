import 'package:flutter/material.dart';
import 'package:sproutly/customwidgets.dart';
import 'package:sproutly/registerpage.dart';
import 'package:sproutly/teensloginpage.dart';

import 'loginpage.dart';

class NotYouPage extends StatefulWidget {
  const NotYouPage({Key? key}) : super(key: key);

  @override
  State<NotYouPage> createState() => _NotYouPageState();
}

class _NotYouPageState extends State<NotYouPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            blackContainer(),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  const GreetingText(text: 'Welcome Back!', size: 28.0),
                  hand()
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'phone number, username or email'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Password',
                    suffixIcon: Icon(Icons.remove_red_eye_outlined)),
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
                child: GreenButton(text: 'Login')),
            const SizedBox(height: 20),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [dontHaveAccount()]),
            const SizedBox(height: 10),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TeensLoginPage()));
                },
                child: Text(
                  "Teen's login",
                  style: TextStyle(
                      color: Colors.green.shade900, fontFamily: 'Poppins'),
                )),
            const SizedBox(height: 10),
            Text(
              "Forgot Password?",
              style: TextStyle(
                  color: Colors.green.shade900, fontFamily: 'Poppins'),
            ),
          ],
        ),
      ),
    );
  }

  Widget blackContainer() {
    return Container(
      decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage('images/myplant.png'), fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(30)),
      height: 370.0,
      width: MediaQuery.of(context).size.width,
      child: const Center(
        child: Text(
          'SPROUTLY',
          style: TextStyle(
              fontSize: 30.0,
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }

  Widget hand() {
    return Image.asset(
      'images/Waving.png',
      height: 30.0,
    );
  }

  Widget dontHaveAccount() {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const RegisterPage()));
      },
      child: RichText(
          text: TextSpan(children: <TextSpan>[
        const TextSpan(
            text: "Don't have an account",
            style: TextStyle(
                fontSize: 15.0, color: Colors.black, fontFamily: 'Poppins')),
        TextSpan(
            text: ' Register',
            style: TextStyle(
                fontSize: 15.0,
                color: Colors.green.shade900,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins'))
      ])),
    );
  }
}
