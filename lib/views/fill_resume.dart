import 'package:flutter/material.dart';
import 'package:isef_project/widgets/custom_text_from_field.dart';

TextEditingController emailcontrollor = TextEditingController();
TextEditingController sonNamecontrollor = TextEditingController();
TextEditingController sonAgecontrollor = TextEditingController();
var formKey = GlobalKey<FormState>();

class FillResume extends StatelessWidget {
  const FillResume({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'Fill the resume',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                CustomTextFromField(
                    controller: sonNamecontrollor,
                    fieldText: "Son Name",
                    icon: Icons.person),
                const SizedBox(
                  height: 25,
                ),
                CustomTextFromField(
                    controller: sonAgecontrollor,
                    fieldText: "Son Age",
                    icon: Icons.numbers),
                const SizedBox(
                  height: 25,
                ),
                CustomTextFromField(
                    controller: emailcontrollor,
                    fieldText: "Email",
                    icon: Icons.email),
                const SizedBox(
                  height: 25,
                ),
                CustomTextFromField(
                    controller: emailcontrollor,
                    fieldText: "Email",
                    icon: Icons.email),
                const SizedBox(
                  height: 25,
                ),
                CustomTextFromField(
                    controller: emailcontrollor,
                    fieldText: "Email",
                    icon: Icons.email),
                const SizedBox(
                  height: 25,
                ),
                CustomTextFromField(
                    controller: emailcontrollor,
                    fieldText: "Email",
                    icon: Icons.email),
                const SizedBox(
                  height: 25,
                ),
                CustomTextFromField(
                    controller: emailcontrollor,
                    fieldText: "Email",
                    icon: Icons.email),
                const SizedBox(
                  height: 25,
                ),
                CustomTextFromField(
                    controller: emailcontrollor,
                    fieldText: "Email",
                    icon: Icons.email),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: MaterialButton(
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {}
                    },
                    child: const Text(
                      "Submit",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
