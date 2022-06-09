import 'package:flutter/material.dart';

class Transactions extends StatefulWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                contaner(),
                activities()
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  history()
                ],
              ),
            )
          ],
        ),
      )
    );
  }

  Widget contaner() {
    return Padding(
      padding: const EdgeInsets.only(right: 50),
      child: Container(
        height: 110,
        width: 350,
        decoration: BoxDecoration(
          color: Colors.green.shade900,
          borderRadius: const BorderRadius.only(
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
          'Transactions',
          style: TextStyle(fontSize: 25, color: Colors.white, fontFamily: 'Poppins',),
        ));
  }

  Widget history(){
    return Container(
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey, width: 1.5)
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          children: [
            const Text('All time'),
            const SizedBox(
              width: 230,
            ),
            Flexible(child: InkWell(child: const  Icon(Icons.keyboard_arrow_down, color: Colors.grey,),onTap: (){},),),
          ],
        ),
      ),
    );
  }
}
