import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:isef_project/views/login.dart';
import 'package:isef_project/views/newMain.dart';
import 'package:isef_project/widgets/build_page.dart';
import 'package:isef_project/widgets/last_button_onboard.dart';

import '../widgets/custom_button.dart';

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
                    urlImage: 'assets/img/kid.png',
                    title: "Hand in Hand",
                    subtitle:
                        "  هو تطبيق مصمم لتشخيص وتمكين الأفراد والعائلات المتأثرين باضطراب فرط الحركة ونقص الانتباه"
                        " , فهو يجمع بين ثلاث وظائف رئيسية"
                        " اولا تشخيص اضطراب فرط الحركة وقلة الانتباه"
                        ", ثانيا موارد عن اضطراب فرط الحركة ونقص الانتباه: موضوعات مثل الأعراض والأنواع واستراتيجيات الإدارة وآليات التكيف , ممكن يساعد المستخدمين على فهم أنفسهم وتجاربهم بشكل أفضل"),
                buildPage(
                    color: Colors.white,
                    urlImage: 'assets/img/fix.png',
                    title: "What The App Do?",
                    subtitle:
                        "ثالثا أدوات العلاج السلوكي: يوفر التطبيق إمكانية الوصول إلى التمارين والتقنيات القائمة على الأدلة لمساعدة المستخدمين على إدارة الأعراض وتطوير المهارات الحياتية و تحفيز وتعزيز السلوكيات الإيجابية"
                        '\n'
                        "يهدف أيضًا إلى المساهمة في نشر الوعي باضطراب فرط الحركة ونقص الانتباه على نطاق أوسع بشكل عام"),
                buildPage(
                    color: Colors.white,
                    urlImage: 'assets/img/adhdlastpic.jpg',
                    title: "Shall we begin ?",
                    subtitle: "Hand in Hand بيهدف "
                        '\n'
                        'لحل تعقيدات اضطراب فرط الحركة ونقص الانتباه ,'
                        " ممكن الان تاخد جوله على البرنامج وتظهر تشخيصك سواءا كان لنفسك او لاحد اطفالك لديك واللي هيمر ب3 مراحل ويتم تشيخصك بناءا على الاساله المجاب عليها "),
              ]),
        ),
        bottomSheet: isLastpage
            ? CustomButton(
                text: "Get Started",
                onTap: () {
                  FirebaseAuth.instance.authStateChanges().listen((User? user) {
                    if (user != null) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NewMainScreen()));
                    }
                  });
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Login()));
                },
              )
            : AnyButtonOnBoard(controller: controller));
  }
}
