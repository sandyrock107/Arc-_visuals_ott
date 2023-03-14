import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'Ott_2.dart';

class OOT_1 extends StatefulWidget {
  const OOT_1({Key? key}) : super(key: key);

  @override
  State<OOT_1> createState() => _OOT_1State();
}

class _OOT_1State extends State<OOT_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey.shade400,
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
            const ListTile(
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
            const ListTile(
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
            const Divider(
              height: 0.1,
            ),
            const ListTile(
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
            const Divider(
              height: 18,
              color: Colors.white,
            ),
            const ListTile(
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
            const Divider(
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
                const SizedBox(
                  width: 5,
                ),
                Container(
                    margin: const EdgeInsets.only(
                      left: 10,
                    ),
                    height: 30,
                    width: 20,
                    //color: Colors.cyan,
                    child: Icon(
                      Icons.search_outlined,
                      size: 25,
                      color: Colors.white,
                    )),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 10,
                  ),
                  height: 30,
                  width: 90,
                  //color: Colors.yellowAccent,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const oot_2()),
                      );
                    },
                    child: const Text("PrimeTV"),
                  ),
                ),
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
                  //color: Colors.yellowAccent,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/a1.jpg"),
                          fit: BoxFit.fill)),
                ),
              ],
            ),
            Container(
              height: 210,
              width: 393,
              color: Colors.black54,
              child: CarouselSlider.builder(
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 1.0,
                  aspectRatio: 2.1,
                  initialPage: 1,
                ),
                itemCount: sandy.length,
                itemBuilder:
                    (BuildContext context, int Index, int pageViewIndex) =>
                        Container(
                  margin: EdgeInsets.only(left: 10, top: 10, right: 10),
                  height: 150,
                  width: 400,
                  //color: Colors.cyanAccent,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(sandy[Index].image),
                    fit: BoxFit.fill,
                  )),
                ),
              ),
            ),
            Container(
              height: 40,
              width: 400,
              color: Colors.black54,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Latest & Trending",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
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
                child: Text(
                  "Best in sports",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ),
            Container(
              height: 130,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: sandy3.length,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 130,
                        width: 170,
                        // color: Colors.cyanAccent,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(sandy3[index].image),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            )),
                      ),
                    );
                  }),
            ),
            Container(
              height: 40,
              width: 400,
              color: Colors.black54,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Popular Shows",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ),
            Container(
              height: 150,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: sandy4.length,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: 100,
                        // color: Colors.cyanAccent,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(sandy4[index].image),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            )),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

// class Model {
//   String? text;
//   String? image;
//
//   Model(this.text, this.image);
// }
//
// List lists = moduleData.map((e) => Model(e['text'], e['image'])).toList();
//
// var moduleData = [
//   {'text': 'Super Jumper', 'image': 'assets/b2.jpg'},
//   {'text': 'Space Gun', 'image': 'assets/b2.jpg'},
// ];

class Abc {
  String? image;
  Abc(this.image);
}

List sandy = moduleData.map((e) => Abc(e["image"])).toList();
var moduleData = [
  {'image': 'assets/b1.jpg'},
  {'image': 'assets/b2.jpg'},
  {'image': 'assets/b3.jpg'},
  {'image': 'assets/b4.jpg'},
  {'image': 'assets/b5.jpg'},
];

class Abc1 {
  String? image;
  Abc1(this.image);
}

List sandy2 = moduleData1.map((e) => Abc1(e["image"])).toList();

var moduleData1 = [
  {'image': 'assets/c1.jpg'},
  {'image': 'assets/c2.jpg'},
  {'image': 'assets/c3.jpg'},
  {'image': 'assets/c4.jpg'},
  {'image': 'assets/c5.jpg'},
];

class Abc3 {
  String? image;
  Abc3(this.image);
}

List sandy3 = moduleData2.map((e) => Abc1(e["image"])).toList();

var moduleData2 = [
  {'image': 'assets/d1.jpg'},
  {'image': 'assets/d2.jpg'},
  {'image': 'assets/d3.jpg'},
  {'image': 'assets/d4.jpg'},
  {'image': 'assets/d5.jpg'},
];

class Abc4 {
  String? image;
  Abc4(this.image);
}

List sandy4 = moduleData4.map((e) => Abc4(e["image"])).toList();

var moduleData4 = [
  {'image': 'assets/e1.jpg'},
  {'image': 'assets/e2.jpg'},
  {'image': 'assets/e3.jpg'},
  {'image': 'assets/e4.jpg'},
  {'image': 'assets/e5.jpg'},
];
