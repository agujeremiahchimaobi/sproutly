import 'package:flutter/material.dart';
import 'package:sproutly/customwidgets.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 40.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 150.0, top: 20),
                child: SmallBox(icon: Icons.close, color: Colors.black, containercolor: Colors.white, ontap: (){Navigator.pop(context);},)),
            const Padding(
              padding: EdgeInsets.only(right: 30, top: 30.0),
                child: Text('Notifications', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),))
          ],
        ),
      ),
    );
  }
}
