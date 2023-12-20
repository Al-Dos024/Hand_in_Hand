import 'package:flutter/material.dart';
import 'package:isef_project/widgets/build_page.dart';
import 'package:isef_project/widgets/last_button_onboard.dart';

class OnBorading extends StatefulWidget {
  const OnBorading({super.key});

  @override
  State<OnBorading> createState() => _OnBoradingState();
}

class _OnBoradingState extends State<OnBorading> {
  final controller = PageController();
  bool isLastpage = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: const EdgeInsets.only(bottom: 80),
          child: PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() => isLastpage = index == 2);
              },
              children: [
                buildPage(
                    color: Colors.white,
                    urlImage: 'assets/img/1stADHD.jpg',
                    title: "Welcome a board",
                    subtitle:
                        "ADHD is one of the most common neurodevelopmental disorders of childhood. It is usually first diagnosed in childhood and often lasts into adulthood. Children with ADHD may have trouble paying attention, controlling impulsive behaviors (may act without thinking about what the result will be), or be overly active. "),
                buildPage(
                    color: Colors.white,
                    urlImage: 'assets/img/1stADHD.jpg',
                    title: "What The App Do?",
                    subtitle:
                        "Many people do not know that they have ADHD, and many people continue to live without knowing that they have it, thinking of themselves as a failure due to lack of knowledge about the disorder or lack of correct knowledge and aslo the parents. They are different, but with characteristics and beautiful people and therefore a different lifestyle and. "),
                buildPage(
                    color: Colors.white,
                    urlImage: 'assets/img/1stADHD.jpg',
                    title: "Shall we begin ?",
                    subtitle:
                        "They might disrupt their family unit. And they may have difficulty interacting appropriately with peers and the adults that they come into contact with on a day to day basis he behavior of children with ADHD often results in serious disturbances in their relationships with parents, teachers, peers, and siblings, as well as academic problems."),
              ]),
        ),
        bottomSheet: isLastpage
            ? const LastButtonOnBoard()
            : AnyButtonOnBoard(controller: controller));
  }
}
