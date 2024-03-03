// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:isef_project/widgets/videoplayerwidget.dart';

class VideoDesc extends StatefulWidget {
  const VideoDesc({super.key});

  @override
  State<VideoDesc> createState() => _VideoDescState();
}

class _VideoDescState extends State<VideoDesc> {
  @override
  Widget build(BuildContext context) {
    // if (Navigator.of(context).canPop()) {
    //   FirebaseAuth.instance.signOut();
    // }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff6A74D5),
        title: const Text(
          'Video about ADHD',
          style: TextStyle(
              color: Colors.white, fontSize: 27, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: const Color(0xff6A74D5),
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    width: 620,
                    height: 270,
                    color: Colors.black,
                    child: const Padding(
                      padding: EdgeInsets.all(5),
                      child: SizedBox(
                          width: 500,
                          child: VideoPlayerWidget(
                              videoUrl: "assets/img/adhdvideo.mp4")),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
                width: double.infinity,
                child: Image.asset("assets/img/ADHD+Infographic.png")),
          ],
        ),
      ),
    );
  }
}
