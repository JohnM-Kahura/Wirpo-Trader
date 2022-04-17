import 'package:flutter/material.dart';
import 'package:wirpo/home/dashboard_details.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String dropdownValue = 'Choose Market Symbol';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: const Icon(Icons.menu),
        title: const Center(
          child: Text('Dashboard'),
        ),
        actions: const [
          Icon(Icons.person),
        ],
      ),
      body: Column(
        children: [
          const Center(
            child: Text(
              'Enter the Market Symbol',
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(50),
            width: double.infinity,
            child: DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              // style: const TextStyle(
              //   color: Colors.deepPurple
              // ),
              // underline: Container(
              //   height: 2,
              //   color: Colors.deepPurpleAccent,
              // ),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>['Choose Market Symbol', 'JPY', 'USD', 'NZD']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
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
              'Select',
              style: TextStyle(color: Colors.white),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
            ),
          )
        ],
      ),
    );
  }
}
