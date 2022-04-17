import 'package:flutter/material.dart';

class DashBoardDetails extends StatefulWidget {
  const DashBoardDetails({Key? key}) : super(key: key);

  @override
  State<DashBoardDetails> createState() => _DashBoardDetailsState();
}

class _DashBoardDetailsState extends State<DashBoardDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Center(child: Text('Details'),),
      ),
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround  ,
          children: [TextButton(
            onPressed: () {
              Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const DashBoardDetails()),
  );
            },
            child: const Text(
              'Start Date',
              style: TextStyle(color: Colors.white),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const DashBoardDetails()),
  );
            },
            child: const Text(
              'End Date',
              style: TextStyle(color: Colors.white),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
            ),
          ),
         const Icon(Icons.verified,color: Colors.black,)
          ],),
          Container(margin: const EdgeInsets.all(20),height: 400,width: double.infinity,decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black),
          ),child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(child: Text('Pricing Details',style: TextStyle(decoration: TextDecoration.underline),),),
            )
          ],),)
      ],),
    );
  }
}
