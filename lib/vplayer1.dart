import 'package:flutter/material.dart';
import 'package:ott/Ott_1.dart';

import 'package:video_player/video_player.dart';

import 'Arc_Visual.dart';

class vdplayer extends StatefulWidget {
  const vdplayer({Key? key}) : super(key: key);

  @override
  State<vdplayer> createState() => _vdplayerState();
}

class _vdplayerState extends State<vdplayer> {
  late VideoPlayerController controller;
  String videoUrl =
      "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4";

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.network(videoUrl)
      ..initialize().then((_) {
        setState(() {});
      });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const arc_visuals()));
                  },
                  child: const Text(
                    "<",
                    style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 80,
                ),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(3),
                    child: const Text(
                      'Arc visual',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                SizedBox(
                  width: 70,
                ),
                Container(
                  padding: const EdgeInsets.all(3),
                  height: 40,
                  width: 40,
                  child: Icon(
                    Icons.mic,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
              ],
            ),
            Container(
              height: 220,
              width: 550,
              child: controller.value.isInitialized
                  ? AspectRatio(
                      aspectRatio: controller.value.aspectRatio,
                      child: VideoPlayer(controller),
                    )
                  : Container(),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 3),
                  height: 100,
                  width: 390,
                  //color: Colors.cyanAccent,
                  child: Text(
                    "Teaching is the practice implemented by a "
                    "teacher aimed at transmitting skills (knowledge,"
                    " know-how, and interpersonal skills) to a learner, "
                    " learning, the student's activity of appropriating this knowledge",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 300,
                  child: Text(
                    "Learn to Knowledge",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 2),
              height: 150,
              width: 390,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: responce.length,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        //color: Colors.red,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage(responce[index].image),
                          fit: BoxFit.fill,
                        )),

                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              //print(videoUrl);
                              videoUrl = responce[index].video;
                              //print(videoUrl);
                              controller =
                                  VideoPlayerController.network(videoUrl)
                                    ..initialize().then((_) {
                                      setState(() {});
                                    });

                              controller.play();
                            });
                          },
                        ),
                      ),
                    );
                  }),
            ),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 390,
                  child: Text(
                    "AboutArcvisuals     HotstarTerms    UsePrivacyPolicy  FAQ  FeedbackCareers",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 290,
              width: 390,
              //color: Colors.cyanAccent,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/g6.jpg"),
                fit: BoxFit.cover,
              )),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            controller.value.isPlaying ? controller.pause() : controller.play();
          });
        },
        child: Icon(
          controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}

// class Player {
//   String? image;
//   String? video;
//   Player(this.image, this.video);
// }
//
// List view =
//     moduleDataaa.map((e) => Player(e["image"], e["video"])).toString() as List;
// var moduleDataaa = [
//   {"image": "assets/f1.png", 'video': "videoUrl"},
//   {"image": "assets/f4.png", "video": "videoUrl"},
// ];
class Recorder {
  String? image;
  String? video;
  Recorder(this.image, this.video);
}

List responce =
    moduleDataaa.map((e) => Recorder(e["image"], e["video"])).toList();

var moduleDataaa = [
  {
    'image': 'assets/g5.jpg',
    'video':
        'https://media.istockphoto.com/id/1200705824/video/young-asian-doctor-talking-to-senior-asian-patient.mp4?s=mp4-640x640-is&k=20&c=fG8ADpONCNdOzVaatqWSp3g2XyNdXllTyCC6vSkEXX4='
  },
  {
    'image': 'assets/g2.jpg',
    'video':
        'https://player.vimeo.com/external/580064849.sd.mp4?s=6bf7ad5379b518eedc8afe6fd7e5a714be6c4cc3&profile_id=164&oauth2_token_id=57447761'
  },
  {
    'image': 'assets/g3.jpg',
    'video':
        'https://player.vimeo.com/external/451078398.sd.mp4?s=1b74f8cbc135171fbc0c7e2055e3b2ad2a6a19c8&profile_id=164&oauth2_token_id=57447761'
  },
  {
    'image': 'assets/g4.jpg',
    'video':
        'https://player.vimeo.com/external/451873621.sd.mp4?s=540921be4c65dc614b3ccf2270c491ecb0951efb&profile_id=165&oauth2_token_id=57447761'
  },
  {
    'image': 'assets/g5.jpg',
    'video':
        'https://player.vimeo.com/external/451853942.sd.mp4?s=cd2c188dd7468715064e0ac7f60c08fb5979a3d9&profile_id=164&oauth2_token_id=57447761'
  },
];
