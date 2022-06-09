import 'package:flutter/material.dart';
import 'package:sproutly/customwidgets.dart';
import 'package:sproutly/loginpage.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            blackContainer(),
            Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                child: Row(
                  children: [
                    hand(),
                    const SizedBox(width: 15.0),
                    const GreetingText(
                      text: 'Goodbye saving boxes!',
                      size: 22.0,
                    )
                  ],
                )),
            const Padding(
                padding: EdgeInsets.only(right: 190, top: 10),
                child: GreetingText(
                  text: 'hello sproutly!',
                  size: 22.0,
                )),
            const Padding(
                padding: EdgeInsets.only(right: 120, top: 30.0),
                child: Text(
                  'Your phone number goes here',
                  style: TextStyle(
                      fontFamily: 'Poppins', fontSize: 15.0, color: Colors.grey),
                )),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 20),
              child: Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          canter(),
                          const Text(
                            '+234',
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(width: 10.0),
                  const Flexible(
                      child: Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: TextField(
                      decoration: InputDecoration(),
                    ),
                  )),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
              child: GreenButton(text: 'Get Started'),
            ),
            const SizedBox(height: 20.0),
            gotAnAccount()
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
              fontWeight: FontWeight.bold),
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

  Widget canter() {
    return Icon(
      Icons.circle,
      color: Colors.green.shade900,
    );
  }

  Widget gotAnAccount() {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginPage()));
      },
      child: RichText(
          text: TextSpan(children: <TextSpan>[
        const TextSpan(
            text: 'Got an account?',
            style: TextStyle(
                fontSize: 15.0, color: Colors.black, fontFamily: 'Poppins')),
        TextSpan(
            text: ' Sign in',
            style: TextStyle(
                fontSize: 15.0,
                color: Colors.green.shade900,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins'))
      ])),
    );
  }
}
