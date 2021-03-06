import 'package:flutter/material.dart';
import 'package:sproutly/customwidgets.dart';
import 'package:sproutly/forgotpasswordpage.dart';
import 'package:sproutly/notyoupage.dart';
import 'package:sproutly/tabbar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(),
          child: Column(
            children: [
              Stack(
                children: [
                  upImage(),
                  picture(),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 75.0),
                child: Row(
                  children: [
                    welcome(),
                    const SizedBox(
                      width: 10.0,
                    ),
                Image.asset(
                  'images/Waving.png',
                  height: 30.0,
                ),],
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              me(),
              const SizedBox(
                height: 50.0,
              ),
              passwordField(),
              const SizedBox(
                height: 100.0,
              ),
              Padding(padding: const EdgeInsets.only(left: 20, right: 20.0, top: 20.0),
                child: GreenButton(
                    text: 'Login',
                    ontap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Tabbar(),
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30.0,
                ),
                child: Row(
                  children: [
                    forgotPassword(),
                    const SizedBox(
                      width: 5.0,
                    ),
                    or(),
                    const SizedBox(
                      width: 5.0,
                    ),
                    notYou(),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              fingerPrint(),
            ],
          ),
        ),
      ),
    );
  }

  Widget picture() {
    return const Center(
      child: Padding(
        padding: EdgeInsets.only(
          top: 130.0,
        ),
        child: CircleAvatar(
          backgroundColor: Colors.lightGreenAccent,
          radius: 40.0,
          child: Icon(
            Icons.person_rounded,
            size: 80,
          ),
        ),
      ),
    );
  }

  Widget welcome() {
    return const Text(
      'Welcome Back!',
      style: TextStyle(
          fontFamily: 'Poppins', fontWeight: FontWeight.bold, fontSize: 28.0),
    );
  }

  Widget me() {
    return const Text(
      'Chimaagu18!',
      style: TextStyle(
          fontFamily: 'Poppins', fontWeight: FontWeight.bold, fontSize: 27.0),
    );
  }

  Widget passwordField() {
    return const Padding(
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Password',
            hintStyle: TextStyle(
                fontFamily: 'Poppins', fontSize: 18.0, color: Colors.grey),
            suffixIcon: Icon(Icons.remove_red_eye_outlined)),
      ),
    );
  }

  Widget forgotPassword() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ForgotPassword()));
        },
        child: Text(
          'Forgot Password?',
          style: TextStyle(
              fontFamily: 'Poppins', color: Colors.green[900], fontSize: 21.0),
        ),
      ),
    );
  }

  Widget or() {
    return const Text(
      'or',
      style: TextStyle(color: Colors.grey, fontSize: 18.0),
    );
  }

  Widget notYou() {
    return Flexible(
      child: InkWell(
        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> const NotYouPage()));},
        child: Text(
          'Not You?',
          style: TextStyle(
              fontFamily: 'Poppins', color: Colors.green[900], fontSize: 21.0),
        ),
      ),
    );
  }

  Widget fingerPrint() {
    return const Icon(
      Icons.fingerprint,
      size: 30,
    );
  }

  Widget upImage() {
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      height: 170,
      width: 400,
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: ExactAssetImage("images/picture.jpg"), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}
