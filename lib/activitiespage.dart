import 'package:flutter/material.dart';

class Activities extends StatefulWidget {
  const Activities({Key? key}) : super(key: key);

  @override
  State<Activities> createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [contaner(), activities()],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Stack(
              clipBehavior: Clip.none,
              children: [profile(), plus(), content()],
            ),
          ),
        ],
      ),
    );
  }

  Widget contaner() {
    return Padding(
        padding: const EdgeInsets.only(right: 50),
        child: Container(
          height: 110,
          width: 350,
          decoration: const BoxDecoration(
            color: Colors.lime,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(300),
            ),
          ),
        ),
    );
  }

  Widget activities() {
    return const Padding(
        padding: EdgeInsets.only(top: 60, left: 30),
        child: Text(
          'Activities',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ));
  }

  Widget plus() {
    return const Padding(
        padding: EdgeInsets.only(left: 200),
        child: Icon(
          Icons.add_circle,
          size: 30,
        ));
  }

  Widget profile() {
    return const Center(
      child: CircleAvatar(
        backgroundColor: Colors.lime,
        radius: 55.0,
        child: Icon(
          Icons.person_rounded,
          size: 110,
        ),
      ),
    );
  }

  Widget content() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 130),
        child: RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(children: <TextSpan>[
            TextSpan(
                text: 'No activities yet. Create a teens account to get',
                style: TextStyle(color: Colors.black)),
            TextSpan(
                text: '\nstarted on the many Sproutly features',
                style: TextStyle(color: Colors.black))
          ]),
        ),
      ),
    );
  }
}
