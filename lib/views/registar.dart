// ignore_for_file: use_build_context_synchronously, prefer_const_constructors_in_immutables, avoid_print, file_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:isef_project/views/login.dart';
import 'package:isef_project/views/more.dart';
import 'package:isef_project/widgets/custom_snackbar.dart';
import 'package:isef_project/widgets/custom_text_from_field_reg.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});

  static String id = 'RegisterPage';

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

final nameController = TextEditingController();
final ageController = TextEditingController();
final databaseRef = FirebaseDatabase.instance.ref("users");
final FirebaseAuth auth = FirebaseAuth.instance;

final User? user = auth.currentUser;
final uid = user!.uid;

class _RegisterPageState extends State<RegisterPage> {
  String? email;
  String? password;
  String? age;
  String? name;
  bool isLoading = false;

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/img/registerbackground.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Form(
              key: formKey,
              child: ListView(
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Register',
                        style: TextStyle(
                            fontSize: 32,
                            color: Color(0xff828282),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  CustomTextFromFieldRegister(
                    controller: nameController,
                    fieldText: "Name",
                    icon: Icons.face,
                    onChange: (dataN) {
                      name = dataN;
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomTextFromFieldRegister(
                    controller: ageController,
                    fieldText: "Age",
                    icon: Icons.numbers,
                    onChange: (dataA) {
                      age = dataA;
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomTextFromFieldRegister(
                    fieldText: "Email",
                    icon: Icons.email,
                    onChange: (dataE) {
                      email = dataE;
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      onChanged: (dataP) {
                        password = dataP;
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "password must not be empty";
                        }
                        return null;
                      },
                      obscureText: showpassword,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: const Color(0xff6A74D5),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color(0xff6A74D5),
                            width: 2.0,
                          ),
                        ),
                        focusColor: const Color(0xff6A74D5),
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
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const Login();
                          }));
                        },
                        child: const Text(
                          'Already have an account ?  ',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () async {
                        if (formKey.currentState!.validate()) {
                          isLoading = true;
                          setState(() {});
                          try {
                            await registerUserAccount();
                            databaseRef.child(uid).set(
                              {
                                'Name': nameController.text.toString(),
                                'Age': ageController.text.toString(),
                              },
                            );
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MoreScreen()));
                          } on FirebaseAuthException catch (ex) {
                            if (ex.code == 'weak-password') {
                              showSnackBar(context,
                                  'The password provided is too weak.');
                            } else if (ex.code == 'email-already-in-use') {
                              showSnackBar(context,
                                  'The account already exists for that email , try again');
                            }
                          } catch (ex) {
                            print(ex);
                          }
                          isLoading = false;
                          setState(() {});
                        } else {}
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff7C88FA),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        width: double.infinity,
                        height: 60,
                        child: const Center(
                            child: Text(
                          'Register',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> registerUserAccount() async {
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email!, password: password!);
    print(user.user!.displayName);
  }
}
