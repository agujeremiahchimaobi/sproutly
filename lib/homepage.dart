import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

var selectedIndex = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month, size: 30), label: 'Activities'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.note_rounded,
                size: 30,
              ),
              label: 'Transactions'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.heart_broken,
                size: 30,
              ),
              label: 'Milestones'),
        ],
        currentIndex: selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.green,
        selectedFontSize: 15,
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                blackContainer(),
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 20),
                  child: Row(
                    children: [
                      profile(),
                      const SizedBox(
                        width: 70,
                      ),
                      beta(),
                      const SizedBox(
                        width: 70,
                      ),
                      notification(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 180, left: 20),
                  child: Row(
                    children: [
                      hello(),
                      hand(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 220, left: 20),
                  child: welcome(),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 270, left: 20),
                    child: parentBalance()),
                Padding(
                  padding: const EdgeInsets.only(top: 280, left: 20),
                  child: Row(
                    children: [
                      amount(),
                      const SizedBox(
                        width: 140,
                      ),
                      viewAmount(),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                addMoney(),
                const SizedBox(
                  width: 20,
                ),
                sendMoney(),
              ],
            ),
            Row(
              children: [
                payBills(),
                const SizedBox(
                  width: 20,
                ),
                airTime(),
              ],
            ),
            slc(),
            const SizedBox(height: 20),
            plans(),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }

  Widget blackContainer() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(30)),
      height: 370.0,
    );
  }

  Widget profile() {
    return InkWell(
      onTap: () {
        Scaffold.of(context).openDrawer();
      },
      child: const CircleAvatar(
        backgroundColor: Colors.lightGreenAccent,
        radius: 20.0,
        child: Icon(
          Icons.person_rounded,
          size: 40,
        ),
      ),
    );
  }

  Widget beta() {
    return Container(
      height: 40,
      width: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              'Beta',
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget notification() {
    return const CircleAvatar(
      backgroundColor: Colors.white,
      radius: 20.0,
      child: Icon(
        Icons.notifications_none,
        size: 40,
        color: Colors.black,
      ),
    );
  }

  Widget addMoney() {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 20),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.green.shade900, width: 2),
          borderRadius: BorderRadius.circular(15)),
      height: 60.0,
      width: 150.0,
      child: Center(
          child: Text(
        'Add Money',
        style: TextStyle(
            color: Colors.green.shade900, fontWeight: FontWeight.bold),
      )),
    );
  }

  Widget sendMoney() {
    return Container(
      margin: const EdgeInsets.only(right: 20, top: 20),
      decoration: BoxDecoration(
          color: Colors.green.shade900,
          borderRadius: BorderRadius.circular(15)),
      height: 60.0,
      width: 150.0,
      child: const Center(
        child: Text(
          'Send Money',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget payBills() {
    return Container(
        margin: const EdgeInsets.only(left: 20, top: 20),
        decoration: BoxDecoration(
            color: Colors.green.shade900,
            border: Border.all(color: Colors.green.shade900, width: 2),
            borderRadius: BorderRadius.circular(15)),
        height: 70.0,
        width: 150.0,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                children: const [
                  Text(
                    'Pay bills',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Nigerian only',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  Widget airTime() {
    return Container(
      margin: const EdgeInsets.only(right: 20, top: 20),
      decoration: BoxDecoration(
          color: Colors.lime, borderRadius: BorderRadius.circular(15)),
      height: 70.0,
      width: 150.0,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: const [
                Text(
                  'Airtime',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'Nigerian only',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget slc() {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.black),
      height: 130,
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: RichText(
                    text: const TextSpan(
                        style: TextStyle(fontSize: 10.0, color: Colors.white),
                        children: <TextSpan>[
                      TextSpan(
                          text: 'SLC now live',
                          style: TextStyle(fontSize: 15.0)),
                      TextSpan(
                          text: '\nSproutly Learning Club',
                          style: TextStyle(fontSize: 11.0)),
                      TextSpan(
                          text: '\ncommunity for teens!(learn',
                          style: TextStyle(fontSize: 11.0)),
                      TextSpan(
                          text: '\nmore)', style: TextStyle(fontSize: 11.0)),
                    ])),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget hello() {
    return const Text(
      'Hello Jeremiah!',
      style: TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.bold,
          fontSize: 28.0,
          color: Colors.white),
    );
  }

  Widget welcome() {
    return const Text(
      'Welcome.',
      style: TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.bold,
          fontSize: 27.0,
          color: Colors.white),
    );
  }

  Widget hand() {
    return Image.asset(
      'images/Waving.png',
      height: 30.0,
    );
  }

  Widget plans() {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20.0),
      decoration: BoxDecoration(
          image: const DecorationImage(
              image: ExactAssetImage('images/download.jpg'), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20),
          color: Colors.lightBlue),
      height: 180,
      child: Row(
        children: [
          Column(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget parentBalance() {
    return const Text(
      'Parent Balance',
      style: TextStyle(color: Colors.white),
    );
  }

  Widget amount() {
    return const Text(
      'XXX,XXX',
      style: TextStyle(
          color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.bold),
    );
  }

  Widget viewAmount() {
    return const CircleAvatar(
      backgroundColor: Colors.white,
      radius: 20.0,
      child: Icon(
        Icons.remove_red_eye_outlined,
        size: 21,
        color: Colors.black,
      ),
    );
  }

  void onTap(index) {
    selectedIndex = index;
    setState(() {});
  }
}
