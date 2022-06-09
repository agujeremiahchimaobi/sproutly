import 'package:flutter/material.dart';
import 'package:sproutly/customwidgets.dart';
import 'package:sproutly/loginpage.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _FState();
}

class _FState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          blackContainer(),
          Padding(
            padding: const EdgeInsets.only(right: 150.0, top: 20.0),
            child: Text(
              'Forgot Password?',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.green[900],
                  fontSize: 21.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 120.0, top: 30.0),
            child: Text(
              'Your email address goes here',
              style: TextStyle(color: Colors.grey, fontSize: 17),
            ),
          ),
          emailField(),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20.0, top: 20.0),
            child: GreenButton(text: 'Reset Password'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
                child: Text(
                  'Sign in',
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      color: Colors.green.shade900),
                )),
          ),
        ],
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

  Widget emailField() {
    return const Padding(
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      child: TextField(
        decoration: InputDecoration(
          hintStyle: TextStyle(
              fontFamily: 'Poppins', fontSize: 18.0, color: Colors.grey),
        ),
      ),
    );
  }
}
