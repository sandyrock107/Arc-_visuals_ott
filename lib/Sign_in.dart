import 'package:flutter/material.dart';

class Sign_in extends StatefulWidget {
  const Sign_in({Key? key}) : super(key: key);

  @override
  State<Sign_in> createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_in> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // backgroundColor: Colors.deepOrange[100],
      // backgroundColor: Colors.grey,
      backgroundColor: Colors.grey[800],
      body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/a1.jpg'),
                radius: 80,
              ),
              Container(
                margin: EdgeInsets.only(top: 60),
                height: 350,
                width: 393,
                //color: Colors.deepOrange[200],
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.white, Colors.grey],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 2,
                        ),
                        Container(
                          height: 20,
                          width: 90,
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            "Name  :",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 18),
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Container(
                          height: 25,
                          width: 200,
                          //color: Colors.cyanAccent,
                          child: TextFormField(
                            style: TextStyle(fontSize: 16),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Enter your name",
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 20,
                          width: 90,
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            "Email  :",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Container(
                          height: 25,
                          width: 200,
                          //color: Colors.cyanAccent,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Enetr your email",
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 2,
                        ),
                        Container(
                          height: 20,
                          width: 90,
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            "Password :",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 18),
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Container(
                          height: 25,
                          width: 200,
                          //color: Colors.cyanAccent,
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Enter your password"),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 2,
                        ),
                        Container(
                          height: 20,
                          width: 90,
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            "Gender  :",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 18),
                          ),
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        /*  Container(
                          margin: EdgeInsets.only(top: 2),
                          height: 25,
                          width: 200,
                          // color: Colors.cyanAccent,
                          child: Center(
                              child: Text("Male :    Female :    Other :")),
                        ),*/
                        Row(
                          children: [
                            Radio(
                                value: 1,
                                groupValue: 'null',
                                onChanged: (index) {}),
                            Text('Male')
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                                value: 1,
                                groupValue: 'null',
                                onChanged: (index) {}),
                            Text('Female')
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                                value: 1,
                                groupValue: 'null',
                                onChanged: (index) {}),
                            Text('Other')
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 2,
                        ),
                        Container(
                          height: 22,
                          width: 90,
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            "Language :",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 18),
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Container(
                          height: 25,
                          width: 200,
                          //color: Colors.cyanAccent,
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(), labelText: ""),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 2,
                        ),
                        Container(
                          height: 20,
                          width: 90,
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            "Zip code :",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 18),
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Container(
                          height: 25,
                          width: 200,
                          //color: Colors.cyanAccent,
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(), labelText: ""),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    /*  Row(
                      children: [
                        SizedBox(
                          height: 2,
                        ),
                        Container(
                          height: 20,
                          width: 90,
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            "About  :",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Container(
                          height: 50,
                          width: 200,
                          //color: Colors.cyanAccent,
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(), labelText: ""),
                          ),
                        ),
                      ],
                    ),*/
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 150, top: 30),
                          height: 35,
                          width: 100,
                          child: ElevatedButton(
                              onPressed: () {}, child: Text("Regsister")),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Container(
                    height: 140,
                    width: 360,
                    child: Text(
                      "Watch everywhere Stream unlimited movies and TV shows on your phone, tablet, laptop, and TV,OTT streaming means paying an internet provider, like Xfinity, for internet access to watch Netflix, without paying for cable TV....",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}
