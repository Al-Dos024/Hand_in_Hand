import 'package:flutter/material.dart';
import 'package:isef_project/widgets/custom_text_from_field.dart';

bool showpassword = true;
TextEditingController emailcontrollor = TextEditingController();
TextEditingController passwordcontrollor = TextEditingController();
TextEditingController namecontrollor = TextEditingController();
TextEditingController agecontrollor = TextEditingController();
var formKey = GlobalKey<FormState>();

class Registar extends StatefulWidget {
  const Registar({super.key});

  @override
  State<Registar> createState() => _RegistarState();
}

class _RegistarState extends State<Registar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const Text(
                  "Register",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                /////////////////////////////////////////////////
                //                    name

                CustomTextFromField(
                    controller: namecontrollor,
                    fieldText: "Name",
                    icon: Icons.person),

                SizedBox(
                  height: 25,
                ),
                /////////////////////////////////////////////////////
                //                  Age
                CustomTextFromField(
                    controller: agecontrollor,
                    fieldText: "Age",
                    icon: Icons.numbers),
                const SizedBox(
                  height: 25,
                ),

                /////////////////////////////////////////
                ///                  Email
                CustomTextFromField(
                    controller: emailcontrollor,
                    fieldText: "Email",
                    icon: Icons.email),
                const SizedBox(
                  height: 25,
                ),

                /////////////////////////////////////////
                ///               password
                TextFormField(
                  controller: passwordcontrollor,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "password must not be empty";
                    }
                    return null;
                  },
                  obscureText: showpassword,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          showpassword = !showpassword;
                        });
                      },
                      icon: Icon(showpassword
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                    border: const OutlineInputBorder(),
                  ),
                ),
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
                      "Register",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an accont?'),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
