// ignore_for_file: use_build_context_synchronously, avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:isef_project/views/mainpage.dart';
import 'package:isef_project/views/registar.dart';
import 'package:isef_project/widgets/custom_snackbar.dart';
import 'package:isef_project/widgets/custom_text_from_field_login.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

bool showpassword = true;
TextEditingController emailcontrollor = TextEditingController();
TextEditingController passwordcontrollor = TextEditingController();
var formKey = GlobalKey<FormState>();

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String? email;
  String? password;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async => false,
      child: ModalProgressHUD(
        inAsyncCall: isLoading,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img/background.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 250,
                      ),
                      const Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      CustomTextFromFieldLogin(
                        fieldText: "Email",
                        icon: Icons.email,
                        onChange: (dataE) {
                          email = dataE;
                        },
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: passwordcontrollor,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "password must not be empty";
                          }
                          return null;
                        },
                        onChanged: (dataP) {
                          password = dataP;
                        },
                        obscureText: showpassword,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          labelText: "Password",
                          filled: true,
                          fillColor: Colors.white,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Dont Have an account?',
                            style: TextStyle(color: Colors.white),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegisterPage()));
                            },
                            child: const Text(
                              "Register",
                              style: TextStyle(color: Color(0xff99D9EA)),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 150,
                      ),
                      Container(
                        width: 200,
                        decoration: BoxDecoration(
                          color: const Color(0xff6A74D5),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: MaterialButton(
                          onPressed: () async {
                            if (formKey.currentState!.validate()) {
                              isLoading = true;
                              setState(() {});
                              try {
                                await loginUserAccount();
                                isLoading = false;
                                setState(() {});
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const MainScreen()));
                                emailcontrollor.text = ' ';
                                passwordcontrollor.text = ' ';
                              } on FirebaseAuthException catch (e) {
                                isLoading = false;
                                setState(() {});
                                if (e.code == 'user-not-found') {
                                  showSnackBar(
                                      context, 'No user found for that email');
                                } else if (e.code == 'wrong-password') {
                                  showSnackBar(context,
                                      'Wrong password provided for that user.');
                                }
                              }
                            }
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> loginUserAccount() async {
    UserCredential user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email!.trim(), password: password!);
    print(user.user!.displayName);
  }
}
