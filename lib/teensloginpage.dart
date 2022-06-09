import 'package:flutter/material.dart';
import 'package:sproutly/customwidgets.dart';
import 'package:sproutly/registerpage.dart';

class TeensLoginPage extends StatefulWidget {
  const TeensLoginPage({Key? key}) : super(key: key);

  @override
  State<TeensLoginPage> createState() => _TeensLoginPageState();
}

class _TeensLoginPageState extends State<TeensLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          upImage(),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                hand(),
                const SizedBox(width: 20.0),
                const GreetingText(text: 'Goodbye saving boxes,', size: 22.0),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: const GreetingText(text: 'Hello Sproutly', size: 22.0)),
          const Padding(
              padding: EdgeInsets.only(left: 20, top: 30.0),
              child: Text(
                'Username',
                style: TextStyle(
                    fontFamily: 'Poppins', fontSize: 15.0, color: Colors.grey),
              )),
          const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextField()),
          const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 30.0),
              child: Text(
                'Card PIN',
                style: TextStyle(
                    fontFamily: 'Poppins', fontSize: 15.0, color: Colors.grey),
              )),
          const SizedBox(height: 25.0),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 20.0),
            child: Row(
              children: [
                pinBoxes(),
                const SizedBox(width: 25.0),
                pinBoxes(),
                const SizedBox(width: 25.0),
                pinBoxes(),
                const SizedBox(width: 25.0),
                pinBoxes()
              ],
            ),
          ),
          const SizedBox(height: 60.0),
          const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: GreenButton(text: 'Login')),
          const SizedBox(height: 15.0),
          Center(
            child: Text(
              "Teen's login",
              style: TextStyle(
                  color: Colors.green.shade900, fontFamily: 'Poppins'),
            ),
          ),
          const SizedBox(height: 10.0),
          dontHaveAccount(),
          const SizedBox(height: 10.0),
          Center(
            child: Text(
              "Forgot Pin?",
              style: TextStyle(
                  color: Colors.green.shade900, fontFamily: 'Poppins'),
            ),
          ),
        ],
      ),
    );
  }

  Widget upImage() {
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      height: 190,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: ExactAssetImage("images/white.jpg"), fit: BoxFit.cover),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
      ),
    );
  }

  Widget hand() {
    return Image.asset(
      'images/Waving.png',
      height: 30.0,
    );
  }

  Widget pinBoxes() {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey),
      ),
    );
  }

  Widget dontHaveAccount() {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const RegisterPage()));
      },
      child: Center(
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
      ),
    );
  }
}
