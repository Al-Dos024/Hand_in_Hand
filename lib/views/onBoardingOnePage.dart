import 'package:flutter/material.dart';
import 'package:isef_project/views/login.dart';
import 'package:isef_project/widgets/build_page.dart';
import 'package:isef_project/widgets/custom_button.dart';

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
              title: "M Hand in Hand",
              subtitle:
                  "هو تطبيق مصمم لتمكين الأفراد والعائلات المتأثرين باضطراب فرط الحركة ونقص الانتباه. فهو يجمع بين ثلاث وظائف رئيسية:"
                  "\n"
                  "1/تشخيص اضطراب فرط الحركة وقلة الانتباه:"
                  "2/موارد عن اضطراب فرط الحركة ونقص الانتباه: موضوعات زي الأعراض والأنواع واستراتيجيات الإدارة وآليات التكيف. ممكن يساعد المستخدمين على فهم أنفسهم وتجاربهم بشكل أفضل."
                  "3/أدوات العلاج السلوكي: يوفر التطبيق إمكانية الوصول إلى التمارين والتقنيات القائمة على الأدلة لمساعدة المستخدمين على إدارة الأعراض وتطوير المهارات الحياتية و تحفيز وتعزيز السلوكيات الإيجابية"
                  "يهدف أيضًا إلى المساهمة في نشر الوعي باضطراب فرط الحركة ونقص الانتباه على نطاق أوسع "
                  "بشكل عام، يطمح M Hand in Hand بيهدف لحل تعقيدات اضطراب فرط الحركة ونقص الانتباه."),
        ),
        bottomSheet: CustomButton(
          text: "Get Started",
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Login()));
          },
        ));
  }
}
