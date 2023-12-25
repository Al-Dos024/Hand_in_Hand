import 'package:flutter/material.dart';
import 'package:isef_project/widgets/build_page.dart';

import '../widgets/last_button_onboard.dart';

class OnBoradOnePage extends StatelessWidget {
  const OnBoradOnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: const EdgeInsets.only(bottom: 80),
          child: buildPage(
              color: Colors.white,
              urlImage: 'assets/img/adhdMain.jpg',
              title: "Shall we begin ?",
              subtitle:
                  "They might disrupt their family unit. And they may have difficulty interacting appropriately with peers and the adults that they come into contact with on a day to day basis he behavior of children with ADHD often results in serious disturbances in their relationships with parents, teachers, peers, and siblings, as well as academic problems."),
        ),
        bottomSheet: const LastButtonOnBoard());
  }
}
