import 'package:flutter/material.dart';

class sandy extends StatefulWidget {
  const sandy({Key? key}) : super(key: key);

  @override
  State<sandy> createState() => _sandyState();
}

class _sandyState extends State<sandy> {
  String dropdownValue = 'Tamil';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10, left: 5),
          height: 20,
          width: 50,
          color: Colors.cyanAccent,
          child: Center(
              child: Text(
            "NETFLIX",
            style: TextStyle(fontSize: 12),
          )),
        ),
        SizedBox(
          width: 30,
        ),
        Container(
          margin: EdgeInsets.only(top: 10, left: 10),
          height: 20,
          width: 68,
          decoration: BoxDecoration(color: Colors.black),
          child: Center(
            child: DropdownButton<String>(
              value: dropdownValue,
              dropdownColor: Colors.blueGrey,
              focusColor: Colors.cyan,
              items: <String>['Tamil', 'English', 'Telugu', 'Kanada']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Center(
                    child: Text(
                      value,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              }).toList(),
              // Step 5.
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        ElevatedButton(onPressed: () {}, child: Text("Signup"))
      ],
    ));
  }
}
