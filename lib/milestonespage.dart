import 'package:flutter/material.dart';

class Milestones extends StatefulWidget {
  const Milestones({Key? key}) : super(key: key);

  @override
  State<Milestones> createState() => _MilestonesState();
}

class _MilestonesState extends State<Milestones> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: SingleChildScrollView(
          child: Column(
            children: [
              flag(),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 100, top: 20),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 80),
                            child: trophy()),
                        Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: profile()),
                        Padding(
                            padding: const EdgeInsets.only(left: 50, top: 5),
                            child: settings()),
                      ],
                    ),
                  )
                ],
              ),
              Padding(padding: const EdgeInsets.only(top: 20.0), child: watch()),
              Padding(padding: const EdgeInsets.only(top: 15), child: they()),
              Padding(
                  padding: const EdgeInsets.only(top: 20), child: comingSoon())
            ],
          ),
        ),
      ),
    );
  }

  Widget flag() {
    return const Image(image: AssetImage('images/images.jfif'));
  }

  Widget profile() {
    return const CircleAvatar(
      backgroundColor: Colors.lime,
      radius: 30.0,
      child: Icon(
        Icons.person_rounded,
        size: 50,
      ),
    );
  }

  Widget settings() {
    return Icon(
      Icons.settings,
      color: Colors.green.shade900,
      size: 50,
    );
  }

  Widget trophy() {
    return const CircleAvatar(
      backgroundColor: Colors.lime,
      radius: 30.0,
      // child: Image(image: AssetImage('images/images.png',), height: 50,),
    );
  }

  Widget watch() {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: <TextSpan>[
          TextSpan(
            text: 'Watch your teen(s) reach',
            style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.green.shade900,
                fontFamily: 'Poppins'),
          ),
          TextSpan(
            text: '\nMoney Milestones',
            style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.green.shade900,
                fontFamily: 'Poppins'),
          ),
        ]),
      ),
    );
  }

  Widget they() {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: <TextSpan>[
          TextSpan(
            text: 'They can get coin points that can be',
            style: TextStyle(
                fontSize: 12,
                color: Colors.green.shade900,
                fontFamily: 'Poppins'),
          ),
          TextSpan(
            text: '\nconverted into royalties and earnings.',
            style: TextStyle(
                fontSize: 12,
                color: Colors.green.shade900,
                fontFamily: 'Poppins'),
          ),
        ]),
      ),
    );
  }

  Widget comingSoon() {
    return Container(
      height: 55,
      width: 150,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.green.shade900, width: 1.5),
          borderRadius: BorderRadius.circular(15)),
      child: Center(
        child: Text(
          'Coming Soon',
          style: TextStyle(
              fontSize: 18.0,
              fontFamily: 'Poppins',
              color: Colors.green.shade900),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
