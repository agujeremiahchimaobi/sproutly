import 'package:flutter/material.dart';
import 'package:sproutly/customwidgets.dart';

class LinkedAccounts extends StatefulWidget {
  const LinkedAccounts({Key? key}) : super(key: key);

  @override
  State<LinkedAccounts> createState() => _LinkedAccountsState();
}

class _LinkedAccountsState extends State<LinkedAccounts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent.shade100,
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 280),
              child: InkWell(
                onTap: (){Navigator.pop(context);},
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: const Icon(Icons.arrow_back_ios),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 240, top: 80),
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.white,
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(right: 100, top: 25),
                child: Text(
                  'Linked Bank Account',
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, right: 20),
              child: RichText(
                  text: const TextSpan(children: <TextSpan>[
                TextSpan(
                    text: "You haven't linked any bank accounts Please link",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: 12)),
                TextSpan(
                    text: '\nyour bank Account to add money to your',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: 12)),
                TextSpan(
                    text: '\nsproutly account.',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: 12))
              ])),
            ),
            const Padding(
                padding: EdgeInsets.only(top: 350),
                child: GreenButton(text: 'Start the process'))
          ],
        ),
      ),
    );
  }
}
