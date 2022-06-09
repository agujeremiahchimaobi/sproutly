import 'package:flutter/material.dart';

class Money extends StatelessWidget {

  final String inputText;
  final dynamic color;
  final dynamic decoration;
  final dynamic ontap;

  const Money({Key? key, required this.inputText, this.color, this.decoration, this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
          margin: const EdgeInsets.only(left: 20, top: 20),
          decoration: decoration,
          height: 60.0,
          width: 150.0,
          child: Center(
              child: Text(
                inputText,
                style: TextStyle(
                    color: color, fontWeight: FontWeight.bold),
              )),
        ),
    );
    }
}

class Bills extends StatelessWidget {

  final String headText;
  final String lastText;
  final double height;
  final dynamic color;
  final double width;
  final dynamic decoration;
  final dynamic child;

  const Bills({Key? key, required this.height, this.color, required this.width, this.decoration, required this.headText, required this.lastText, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        showModalBottomSheet(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30),
              ),
            ),
            context: context, builder: (context)=> Container(
          margin:
          const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: child,
        ));
      },
      child: Container(
          margin: const EdgeInsets.only(left: 20, top: 20),
          decoration: decoration,
          height: 70.0,
          width: 150.0,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Text(
                      style: TextStyle(
                          color: color,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                      headText,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        lastText,
                        style: TextStyle(
                          color: color,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

class Avatar extends StatelessWidget {

  final dynamic icon;
  final dynamic backgroundColor;
  final double radius;
  final double size;
  final dynamic ontap;

  const Avatar({Key? key, this.icon, this.backgroundColor, required this.radius, required this.size, this.ontap,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: CircleAvatar(
        backgroundColor: backgroundColor,
        radius: radius,
        child: Icon(
          icon,
          size: size,
          color: Colors.black,
        ),
      ),
    );
  }
}
class Slc extends StatelessWidget {
  final double height;
  final double width;
  final dynamic decoration;
  final String slctext;
  final String sproutlytext;
  final String communitytext;
  final String moretext;
  final dynamic color;
  final dynamic margin;
  const Slc({Key? key, required this.height, required this.width, this.decoration, required this.slctext, required this.sproutlytext, required this.communitytext, required this.moretext, this.color, this.margin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: margin,
          decoration: decoration,
          height: height,
          width: width,
          child: Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: RichText(
                      text: TextSpan(
                        style: const TextStyle(fontSize: 10.0, color: Colors.white),
                        children: <TextSpan>[
                          TextSpan(
                              text: slctext,
                              style: const TextStyle(fontSize: 15.0)),
                          TextSpan(
                              text: sproutlytext,
                              style: const TextStyle(fontSize: 11.0)),
                          TextSpan(
                              text: communitytext,
                              style: const TextStyle(fontSize: 11.0)),
                          TextSpan(
                              text: moretext, style: const TextStyle(fontSize: 11.0)),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
    );
  }
}
class DrawerCard extends StatelessWidget {
  final String title;
  final dynamic icon;
  final dynamic trailing;
  final dynamic gap;

  const DrawerCard({Key? key, required this.title, this.icon, this.trailing, this.gap,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: gap,
      trailing: trailing,
      minLeadingWidth: 20.0,
        leading: Icon (icon, color: Colors.black,),
        title: Text(title),
    );
  }
}
class BottomSheetHeading extends StatelessWidget {
  final String text;
  final double width;


  const BottomSheetHeading({Key? key, required this.text, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(
          text,
          style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
              fontSize: 17.0),
        ),
         SizedBox(
          width: width,
        ),
        const SmallBox(icon: Icons.close,)
      ],
    );
  }
}
class BottomSheetButton extends StatelessWidget {
  final String text;
  final dynamic icon;
  final dynamic ontap;
  const BottomSheetButton({Key? key, required this.text, this.icon, this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        clipBehavior: Clip.none,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10)),
        height: 60,
        child: DrawerCard(title: text, icon: Icons.warehouse_outlined,),
      ),
    );
  }
}
class BillType extends StatelessWidget {
  final dynamic icon;
  final String text;
  const BillType({Key? key, this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 22.0,
            backgroundColor: Colors.green.shade900,
            child: Icon(
              icon,
              size: 25.0,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 15.0,
          ),
          Text(
            text,
            style: const TextStyle(
                fontFamily: 'Poppins', fontSize: 15.0),
          )
        ],
      ),
    );
  }
}
class GreenButton extends StatelessWidget {
  final String text;
  final dynamic ontap;
  const GreenButton({Key? key, required this.text, this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(),
      child: InkWell(
        onTap: ontap,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.green[900],
            borderRadius: BorderRadius.circular(10),
          ),
          height: 55.0,
          width: 400,
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
class SmallBox extends StatelessWidget {
  final dynamic ontap;
  final dynamic icon;
  final dynamic color;
  final dynamic containercolor;
  const SmallBox({Key? key, this.icon, this.color, this.containercolor, this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: InkWell(
        onTap: ontap,
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: containercolor,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(child: Icon(icon, color: color,)),
        ),
      ),
    );
  }
}
class GreetingText extends StatelessWidget {
  final String text;
  final double size;
  const GreetingText({Key? key, required this.text, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.bold,
          fontSize: size,
          color: Colors.green.shade900),
    );
  }
}







