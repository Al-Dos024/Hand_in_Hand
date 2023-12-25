import 'package:flutter/material.dart';
import 'package:isef_project/widgets/videoplayerwidget.dart';

class Temp extends StatefulWidget {
  const Temp({super.key});

  @override
  State<Temp> createState() => _TempState();
}

class _TempState extends State<Temp> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: VideoPlayerWidget(videoUrl: "assets/img/dvsf.mp4"),
      ),
    );
  }
}
