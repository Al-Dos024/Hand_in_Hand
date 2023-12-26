import 'package:flutter/material.dart';
import 'package:isef_project/views/login.dart';
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
                    title: "M Hand in Hand",
                    subtitle:
                        " هو تطبيق مصمم لتمكين الأفراد والعائلات المتأثرين باضطراب فرط الحركة ونقص الانتباه"
                        ''
                        " فهو يجمع بين ثلاث وظائف رئيسية"
                        '\n'
                        "اولا تشخيص اضطراب فرط الحركة وقلة الانتباه"
                        "  "
                        "ثانيا موارد عن اضطراب فرط الحركة ونقص الانتباه: موضوعات زي الأعراض والأنواع واستراتيجيات الإدارة وآليات التكيف. ممكن يساعد المستخدمين على فهم أنفسهم وتجاربهم بشكل أفضل."),
                buildPage(
                  color: Colors.white,
                  urlImage: 'assets/img/onboard1.jpg',
                  title: "What The App Do?",
                  subtitle:
                      "ثالثا أدوات العلاج السلوكي: يوفر التطبيق إمكانية الوصول إلى التمارين والتقنيات القائمة على الأدلة لمساعدة المستخدمين على إدارة الأعراض وتطوير المهارات الحياتية و تحفيز وتعزيز السلوكيات الإيجابية",
                ),
                buildPage(
                    color: Colors.white,
                    urlImage: 'assets/img/onborad3.jpg',
                    title: "Shall we begin ?",
                    subtitle:
                        "يهدف أيضًا إلى المساهمة في نشر الوعي باضطراب فرط الحركة ونقص الانتباه على نطاق أوسع بشكل عام،"
                        '\n'
                        "  M Hand in Hand بيهدف لحل تعقيدات اضطراب فرط الحركة ونقص الانتباه"),
              ]),
        ),
        bottomSheet: isLastpage
            ? CustomButton(
                text: "Get Started",
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Login()));
                },
              )
            : AnyButtonOnBoard(controller: controller));
  }
}
