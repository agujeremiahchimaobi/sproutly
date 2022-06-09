import 'package:flutter/material.dart';
import 'package:sproutly/customwidgets.dart';
import 'package:sproutly/linkedaccountpage.dart';
import 'package:sproutly/notificationspage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: Row(children: [
                const Avatar(
                  radius: 30.0,
                  size: 60,
                  icon: Icons.person,
                  backgroundColor: Colors.lime,
                ),
                const SizedBox(
                  width: 10,
                ),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Jeremiah Agu',
                        style: TextStyle(
                            color: Colors.green.shade900,
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      const TextSpan(
                          text: '\n@Chimaagu18',
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              fontWeight: FontWeight.bold)),
                      const TextSpan(
                          text: '\n@Chimaagu18',
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ]),
            ),
            const DrawerCard(
              title: "Create a Teens Saving's Account",
              icon: Icons.person_add_alt,
            ),
            const DrawerCard(
              title: "Bank and Cards",
              icon: Icons.credit_card_outlined,
            ),
            const DrawerCard(
              title: "Referrals",
              icon: Icons.receipt_long_outlined,
            ),
            const DrawerCard(
              title: "Help",
              icon: Icons.help_center_outlined,
            ),
            DrawerCard(
              title: "Invite Co Parent",
              icon: Icons.people_alt_outlined,
              trailing: Container(
                height: 20,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green.shade900),
                child: const Center(
                    child: Text(
                  'Beta Coming Soon',
                  style: TextStyle(
                      fontSize: 5.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins'),
                )),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            const DrawerCard(
              title: "Compliance Document",
              icon: Icons.person_add_alt,
            ),
            const DrawerCard(
              title: "Statement & Report",
              icon: Icons.credit_card_outlined,
            ),
            const DrawerCard(
              title: "Account limits",
              icon: Icons.receipt_long_outlined,
            ),
            const DrawerCard(
              title: "Log out",
              icon: Icons.help_center_outlined,
            ),
          ],
        ),
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
                      Avatar(
                        ontap: () {
                          _scaffoldKey.currentState?.openDrawer();
                        },
                        radius: 20.0,
                        backgroundColor: Colors.lime,
                        icon: Icons.person,
                        size: 40.0,
                      ),
                      const SizedBox(
                        width: 70,
                      ),
                      beta(),
                      const SizedBox(
                        width: 70,
                      ),
                      Avatar(
                        ontap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Notifications(),
                            ),
                          );
                        },
                        radius: 20.0,
                        size: 30.0,
                        backgroundColor: Colors.white,
                        icon: Icons.notifications_none,
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    scrollLeft(),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Money(
                  ontap: () {
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(30),
                        ),
                      ),
                      context: context,
                      builder: (context) => Container(
                        margin:
                            const EdgeInsets.only(left: 20, right: 20, top: 20),
                        height: 260,
                        child: Column(
                          children: [
                            const BottomSheetHeading(
                              text: 'Choose Destination',
                              width: 140.0,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            BottomSheetButton(
                              ontap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LinkedAccounts()));
                              },
                              text: 'Linked Bank Account',
                              icon: Icons.warehouse_outlined,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const BottomSheetButton(
                              text: 'transfer',
                              icon: Icons.swap_horiz,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  inputText: 'Add money',
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green.shade900,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                Money(
                  ontap: () {
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(30),
                        ),
                      ),
                      context: context,
                      builder: (context) => Container(
                        margin:
                            const EdgeInsets.only(left: 20, right: 20, top: 20),
                        height: 260,
                        child: Column(
                          children: [
                            const BottomSheetHeading(
                              text: 'Choose Destination',
                              width: 140.0,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(30),
                                      ),
                                    ),
                                    context: context,
                                    builder: (context) => Container(
                                          height: 350,
                                          margin: const EdgeInsets.only(
                                              left: 20, right: 20, top: 20),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: const [
                                                  SmallBox(
                                                    icon: Icons.arrow_back_ios,
                                                  ),
                                                  SizedBox(
                                                    width: 240,
                                                  ),
                                                  SmallBox(
                                                    icon: Icons.close,
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              const Avatar(
                                                radius: 36.0,
                                                size: 70.0,
                                                backgroundColor: Colors.lime,
                                                icon: Icons.person,
                                              ),
                                              const SizedBox(
                                                height: 30,
                                              ),
                                              const TextField(
                                                decoration: InputDecoration(
                                                  hintText: '@ username',
                                                ),
                                                style:
                                                    TextStyle(fontSize: 25.0),
                                              ),
                                              const SizedBox(
                                                height: 50,
                                              ),
                                              const GreenButton(text: 'Verify')
                                            ],
                                          ),
                                        ));
                              },
                              child: Container(
                                margin: const EdgeInsets.only(top: 15),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10)),
                                height: 60,
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Avatar(
                                      radius: 15,
                                      size: 15,
                                      icon: Icons.person,
                                      backgroundColor: Colors.lime,
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    const Text(
                                      'Send to Sproutly User',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    const SizedBox(
                                      width: 80,
                                    ),
                                    Container(
                                      height: 20,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.lime,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: const Center(child: Text('Free')),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            BottomSheetButton(
                                ontap: () {
                                  showModalBottomSheet(
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(30),
                                        ),
                                      ),
                                      context: context,
                                      builder: (context) => Container());
                                },
                                text: 'Send to Another Destination'),
                          ],
                        ),
                      ),
                    );
                  },
                  inputText: 'Send money',
                  color: Colors.white,
                  decoration: BoxDecoration(
                    color: Colors.green.shade900,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Bills(
                  height: 70.0,
                  width: 150.0,
                  headText: 'Pay bills',
                  lastText: 'Nigerian only',
                  color: Colors.white,
                  decoration: BoxDecoration(
                      color: Colors.green.shade900,
                      border:
                          Border.all(color: Colors.green.shade900, width: 2),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: const [
                      BottomSheetHeading(
                        text: 'What type of bill',
                        width: 140.0,
                      ),
                      BillType(
                        text: 'Data Services',
                        icon: Icons.phone_android,
                      ),
                      Divider(thickness: 1.0),
                      BillType(
                        text: 'TV Subscription',
                        icon: Icons.tv,
                      ),
                      Divider(thickness: 1.0),
                      BillType(
                          text: 'Electricity Services',
                          icon: Icons.electric_bolt),
                      Divider(thickness: 1.0),
                      BillType(
                        text: 'Toll Services',
                        icon: Icons.receipt_long_outlined,
                      ),
                      Divider(thickness: 1.0)
                    ],
                  ),
                ),
                const SizedBox(),
                Bills(
                  height: 70.0,
                  width: 150.0,
                  headText: 'Airtime',
                  lastText: 'Nigerian only',
                  color: Colors.white,
                  decoration: BoxDecoration(
                      color: Colors.lime,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      const BottomSheetHeading(
                        text: 'Buy airtime',
                        width: 200.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 55, top: 50),
                        child: Row(
                          children: [
                            SmallBox(
                              icon: Icons.minimize_outlined,
                              color: Colors.white,
                              containercolor: Colors.green.shade900,
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Text(
                              "N100",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.green.shade900,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins'),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            SmallBox(
                              icon: Icons.add,
                              color: Colors.white,
                              containercolor: Colors.green.shade900,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0, left: 5.0),
                        child: Row(
                          children: const [
                            Avatar(
                              radius: 27.0,
                              size: 20.0,
                              backgroundColor: Colors.yellow,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Avatar(
                              radius: 27.0,
                              size: 20.0,
                              backgroundColor: Colors.red,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Avatar(
                              radius: 27.0,
                              size: 20.0,
                              backgroundColor: Colors.green,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Avatar(
                              radius: 27.0,
                              size: 20.0,
                              backgroundColor: Colors.black,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            hintText: 'Enter phone number',
                            hintStyle: const TextStyle(
                                fontSize: 18, color: Colors.grey),
                            contentPadding: const EdgeInsets.fromLTRB(
                                20.0, 15.0, 20.0, 15.0),
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 40.0),
                          child: GreenButton(
                            text: 'Purchase airtime',
                            ontap: () {},
                          ))
                    ],
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Slc(
                  height: 130,
                  width: 300.0,
                  slctext: 'Slc now live',
                  sproutlytext: '\nSproutly Learning Club',
                  communitytext: '\nCommunity for teens!(learn',
                  moretext: '\nmore)',
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black),
                  margin: const EdgeInsets.only(left: 20.0, top: 20.0),
                ),
                Slc(
                  height: 130,
                  width: 300.0,
                  slctext: 'Get free N300',
                  sproutlytext: '\nWhen you refer a friend and',
                  communitytext: '\nThey transact up to NGN300',
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue.shade700),
                  margin:
                      const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                  moretext: '',
                ),
              ]),
            ),
            const SizedBox(height: 10),
            plans(),
            const SizedBox(
              height: 50,
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

  Widget beta() {
    return Container(
      height: 40,
      width: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          children: [
            canter(),
            const Text(
              'Beta',
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
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
      height: 160,
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

  Widget scrollLeft() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 200,
      ),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 70),
              child: Row(
                children: [
                  hello(),
                  const SizedBox(
                    width: 20,
                  ),
                  hand()
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(
                  right: 190,
                ),
                child: welcome()),
            Padding(
                padding: const EdgeInsets.only(right: 220, top: 20),
                child: parentBalance()),
            Padding(
              padding: const EdgeInsets.only(
                left: 30.0,
              ),
              child: Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: amount()),
                  const SizedBox(
                    width: 120,
                  ),
                  const Avatar(
                    radius: 20.0,
                    size: 25.0,
                    icon: Icons.remove_red_eye_outlined,
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget canter() {
    return const Icon(Icons.circle);
  }
}
