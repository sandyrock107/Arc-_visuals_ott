import 'package:flutter/material.dart';
import 'package:ott/User_login.dart';
import 'package:ott/Sign_in.dart';

class arc_visuals extends StatefulWidget {
  const arc_visuals({Key? key}) : super(key: key);

  @override
  State<arc_visuals> createState() => _arc_visualsState();
}

class _arc_visualsState extends State<arc_visuals> {
  String dropdownValue = 'Tamil';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[700],
        /* appBar: AppBar(
          backgroundColor: Colors.pink[500],
          title: Row(
            children: [
              Container(
                height: 30,
                width: 120,
                // color: Colors.cyanAccent,
                child: Center(
                    child: Text(
                  "Arc visual",
                  style: TextStyle(fontSize: 22),
                )),
              ),
              SizedBox(
                width: 30,
                height: 50,
              ),
              Container(
                margin: EdgeInsets.only(top: 2, left: 10),
                height: 27,
                width: 80,
                decoration: BoxDecoration(
                    border: Border.all(width: 2),
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.black),
                child: Center(
                  child: DropdownButtonHideUnderline(
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
              ),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => abc()),
                    );
                  },
                  child: Text("Signup")),
            ],
          ),
        ),*/
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 120,
                    // color: Colors.cyanAccent,
                    child: Center(
                        child: Text(
                      "Arc visual",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    )),
                  ),
                  SizedBox(
                    width: 50,
                    height: 40,
                    //color: Colors.grey,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 2, left: 10),
                    height: 30,
                    width: 90,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(1),
                        color: Colors.black),
                    child: Center(
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: dropdownValue,
                          dropdownColor: Colors.blueGrey,
                          focusColor: Colors.cyan,
                          items: <String>[
                            'Tamil',
                            'English',
                            'Telugu',
                            'Kanada'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Center(
                                child: Text(
                                  value,
                                  style: TextStyle(
                                    fontSize: 16,
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
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 30,
                    width: 90,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const Login()),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black),
                        ),
                        child: const Text(
                          "Signup",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        )),
                  )
                ],
              ),
              Center(
                child: Container(
                  height: 820,
                  width: 400,

                  //color: Colors.cyanAccent,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/bbb4.jpg"),
                    fit: BoxFit.cover,
                  )),
                ),
              )
            ],
          ),
        ));
  }
}

// class bio extends StatelessWidget {
//   const abc({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
