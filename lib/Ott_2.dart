import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ott/User_login.dart';
import 'package:ott/vplayer1.dart';

import 'Ott_1.dart';

class oot_2 extends StatefulWidget {
  const oot_2({Key? key}) : super(key: key);

  @override
  State<oot_2> createState() => _oot_2State();
}

class _oot_2State extends State<oot_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blueGrey,
      drawer: Drawer(
        backgroundColor: Colors.black54,
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text("SANDY"),
                ),
                accountName: Text("Sandy"),
                accountEmail: Text("nsanthoshkumar1919@gmail.com")),
            const ListTile(
              title: Text(
                "Downloads",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              leading: Icon(Icons.cloud_download_sharp,
                  size: 25, color: Colors.white),
            ),
            const Divider(
              height: 0.1,
            ),
            const ListTile(
              title: Text(
                "Watchlist",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              leading: Icon(Icons.menu_open, size: 25, color: Colors.white),
            ),
            const Divider(
              height: 0.1,
            ),
            const ListTile(
              title: Text(
                "Prizes",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              leading: Icon(Icons.card_giftcard, size: 25, color: Colors.white),
            ),
            const Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text(
                "Channels",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              leading: Icon(Icons.connected_tv, size: 25, color: Colors.white),
            ),
            const Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text(
                "Languages",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              leading:
                  Icon(Icons.my_library_books, size: 25, color: Colors.white),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text(
                "Genres",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              leading:
                  Icon(Icons.gif_box_rounded, size: 25, color: Colors.white),
            ),
            Divider(
              height: 18,
              color: Colors.white,
            ),
            ListTile(
              title: Text(
                "Preferences",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              leading: Icon(Icons.settings, size: 25, color: Colors.white),
            ),
            const ListTile(
              title: Text(
                "Help",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              leading: Icon(Icons.question_mark_rounded,
                  size: 25, color: Colors.white),
            ),
            Divider(
              height: 20,
              color: Colors.white,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "Privacy Policy   .  T&C",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 30,
                  width: 140,
                  //color: Colors.cyan,
                  child: const Center(
                      child: Text(
                    "Arc visual",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 25),
                  )),
                ),
                SizedBox(
                  width: 5,
                ),
                SizedBox(
                  width: 100,
                ),
                Container(
                    margin: EdgeInsets.only(
                      left: 10,
                    ),
                    height: 30,
                    width: 30,
                    //color: Colors.cyan,
                    child: Icon(
                      Icons.search_outlined,
                      size: 25,
                      color: Colors.white,
                    )),
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 250,
                width: 393,
                //color: Colors.cyanAccent,
                child: CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 230.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 2.1,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 1,
                  ),
                  itemCount: 5,
                  itemBuilder:
                      (BuildContext context, int Index, int pageViewIndex) =>
                          Container(
                    margin: EdgeInsets.only(left: 10, top: 10, right: 10),
                    height: 200,
                    width: 400,

                    //color: Colors.cyanAccent,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                          image: AssetImage("assets/a1.jpg"),
                          fit: BoxFit.fill,
                        )),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 80,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: sandy5.length,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      width: 80,
                      // color: Colors.cyanAccent,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(sandy5[index].image),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.0),
                          )),
                    ),
                  );
                }),
            //color: Colors.black54,
          ),
          Container(
            height: 40,
            width: 400,
            color: Colors.black54,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended For you",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => vdplayer()));
                    },
                    child: Text(
                      "More>>",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 150,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: sandy2.length,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      width: 100,
                      // color: Colors.cyanAccent,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(sandy2[index].image),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.0),
                          )),
                    ),
                  );
                }),
            //color: Colors.black54,
          ),
          Container(
            height: 40,
            width: 400,
            color: Colors.black54,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended For you",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => vdplayer()));
                    },
                    child: Text(
                      "More>>",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 150,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: spd.length,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      width: 100,
                      // color: Colors.cyanAccent,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(spd[index].image),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.0),
                          )),
                    ),
                  );
                }),
            //color: Colors.black54,
          ),
          Container(
            height: 40,
            width: 400,
            color: Colors.black54,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended For you",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => vdplayer()));
                    },
                    child: Text(
                      "More>>",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 150,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: avatar.length,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      width: 100,
                      // color: Colors.cyanAccent,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(avatar[index].image),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.0),
                          )),
                    ),
                  );
                }),
            //color: Colors.black54,
          ),
        ],
      )),
    );
  }
}

class Abc4 {
  String? image;
  Abc4(this.image);
}

List sandy5 = moduleData4.map((e) => Abc4(e["image"])).toList();

var moduleData4 = [
  {'image': 'assets/f1.png'},
  {'image': 'assets/f4.png'},
  {'image': 'assets/f3.jpg'},
  {'image': 'assets/f2.png'},
  {'image': 'assets/f1.png'},
];

class Update {
  String? image;
  Update(this.image);
}

List spd = moduleData.map((e) => Update(e["image"])).toList();

var moduleData = [
  {'image': 'assets/aa1.jpg'},
  {'image': 'assets/aa2.jpg'},
  {'image': 'assets/aa3.jpg'},
  {'image': 'assets/aa4.jpg'},
  {'image': 'assets/aa5.jpg'},
];

class Cartoon {
  String? image;
  Cartoon(this.image);
}

List avatar = moduleData2.map((e) => Cartoon(e["image"])).toList();

var moduleData2 = [
  {'image': 'assets/bb1.jpg'},
  {'image': 'assets/bb2.jpg'},
  {'image': 'assets/bb3.jpg'},
  {'image': 'assets/aa5.jpg'},
  {'image': 'assets/bb1.jpg'},
];
