import 'package:cosme/login.dart';
import 'package:cosme/utils/message.dart';
import 'package:cosme/widget/button/round_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'model/user_model.dart';
import 'model/user_repository.dart';

class registeration extends StatefulWidget {
  const registeration({Key? key}) : super(key: key);

  @override
  State<registeration> createState() => _registerationState();
}

class _registerationState extends State<registeration> {
  bool loading = false;
  bool isFromValid = false;
  final _fromkey = GlobalKey<FormState>();
  final fullnameControlller = TextEditingController();
  final emailController = TextEditingController();
  final phonenoController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  final userrepo = Get.put(UserRepository());
  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  void register() {
    setState(() {
      loading = true;
    });

    _auth
        .createUserWithEmailAndPassword(
            email: emailController.text.toString(),
            password: passwordController.text.toString())
        .then((value) {
      Mmessage().toastMessage(value.user!.email.toString());

      setState(() {
        loading = false;
      });
    }).onError((error, stackTrace) {
      Mmessage().toastMessage(error.toString());
      setState(() {
        loading = false;
      });
    });
  }

  Future<void> createUser(UserModel user) async {
    await userrepo.createUser(user);
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/background.jpg"),
            ),
          ),
        ),
        Center(
            child: Container(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          width: 340,
          height: 580,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0XFFEC7D7F)),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/logo.png")))),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Paris Cosmetics",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: ListView(children: [
                // Container(
                //   decoration: BoxDecoration(
                //       color: Colors.white,
                //       borderRadius: BorderRadius.circular(10),
                //       boxShadow: [
                //         BoxShadow(
                //             blurRadius: 10,
                //             offset: Offset(1, 1),
                //             color: Colors.black26.withOpacity(0.5)),
                //       ]),
                //   child: Column(
                //     children: [
                //       Form(
                //         key: _fromkey,
                //         child: TextFormField(
                //             decoration: InputDecoration(
                //                 hintText: "Full Name",
                //                 icon: Padding(
                //                   padding: EdgeInsets.only(
                //                       left:
                //                           8.0), // Adjust the padding as needed
                //                   child: Icon(Icons.person),
                //                 ),
                //                 iconColor: Colors.black26,
                //                 focusedBorder: OutlineInputBorder(
                //                     borderSide: BorderSide(
                //                         color: Color(0XFFEC7D7F),
                //                         width: 2.0)),
                //                 border: OutlineInputBorder(
                //                   borderRadius: BorderRadius.circular(10),
                //                 ),
                //                 // ),
                //                 // labelText: 'Enter your email here',
                //                 enabledBorder: OutlineInputBorder(
                //                   borderRadius: BorderRadius.circular(10),
                //                   borderSide: BorderSide.none,
                //                 ))),
                //       ),
                //     ],
                //   ),
                // ),
                //
                // SizedBox(
                //   height: 20,
                // ),
                // Container(
                //   decoration: BoxDecoration(
                //       color: Colors.white,
                //       borderRadius: BorderRadius.circular(10),
                //       boxShadow: [
                //         BoxShadow(
                //             blurRadius: 10,
                //             offset: Offset(1, 1),
                //             color: Colors.black26.withOpacity(0.5)),
                //       ]),
                //   child: Column(
                //     children: [
                //       Form(
                //         child: TextFormField(
                //             decoration: InputDecoration(
                //                 icon: Padding(
                //                   padding: EdgeInsets.only(left: 8.0),
                //                   child: Icon(Icons.email),
                //                 ),
                //                 iconColor: Colors.black26,
                //                 hintText: "Email",
                //                 focusedBorder: OutlineInputBorder(
                //                     borderSide: BorderSide(
                //                         color: Color(0XFFEC7D7F),
                //                         width: 2.0)),
                //                 border: OutlineInputBorder(
                //                   borderRadius: BorderRadius.circular(10),
                //                 ),
                //                 // ),
                //                 // labelText: 'Enter your email here',
                //                 enabledBorder: OutlineInputBorder(
                //                   borderRadius: BorderRadius.circular(10),
                //                   borderSide: BorderSide.none,
                //                 ))),
                //       ),
                //     ],
                //   ),
                // ),
                // SizedBox(
                //   height: 20,
                // ),
                // Container(
                //   decoration: BoxDecoration(
                //       color: Colors.white,
                //       borderRadius: BorderRadius.circular(10),
                //       boxShadow: [
                //         BoxShadow(
                //             blurRadius: 10,
                //             offset: Offset(1, 1),
                //             color: Colors.black26.withOpacity(0.5)),
                //       ]),
                //   child: Column(
                //     children: [
                //       Form(
                //         key: _fromkey,
                //         child: TextFormField(
                //             decoration: InputDecoration(
                //                 icon: Padding(
                //                   padding: EdgeInsets.only(left: 8.0),
                //                   child: Icon(Icons.password),
                //                 ),
                //                 iconColor: Colors.black26,
                //                 hintText: "Password",
                //                 focusedBorder: OutlineInputBorder(
                //                     borderSide: BorderSide(
                //                         color: Color(0XFFEC7D7F),
                //                         width: 2.0)),
                //                 border: OutlineInputBorder(
                //                   borderRadius: BorderRadius.circular(10),
                //                 ),
                //                 // ),
                //                 // labelText: 'Enter your email here',
                //                 enabledBorder: OutlineInputBorder(
                //                   borderRadius: BorderRadius.circular(10),
                //                   borderSide: BorderSide.none,
                //                 ))),
                //       ),
                //     ],
                //   ),
                // ),
                // SizedBox(
                //   height: 20,
                // ),
                // Container(
                //   decoration: BoxDecoration(
                //       color: Colors.white,
                //       borderRadius: BorderRadius.circular(10),
                //       boxShadow: [
                //         BoxShadow(
                //             blurRadius: 10,
                //             offset: Offset(1, 1),
                //             color: Colors.black26.withOpacity(0.5)),
                //       ]),
                //   child: Column(
                //     children: [
                //       Form(
                //         key: _fromkey,
                //         child: TextFormField(
                //             decoration: InputDecoration(
                //                 icon: Padding(
                //                   padding: EdgeInsets.only(left: 8.0),
                //                   child: Icon(Icons.password),
                //                 ),
                //                 iconColor: Colors.black26,
                //                 hintText: "ConfirmPassword",
                //                 focusedBorder: OutlineInputBorder(
                //                     borderSide: BorderSide(
                //                         color: Color(0XFFEC7D7F),
                //                         width: 2.0)),
                //                 border: OutlineInputBorder(
                //                   borderRadius: BorderRadius.circular(10),
                //                 ),
                //                 // ),
                //                 // labelText: 'Enter your email here',
                //                 enabledBorder: OutlineInputBorder(
                //                   borderRadius: BorderRadius.circular(10),
                //                   borderSide: BorderSide.none,
                //                 ))),
                //       )
                //     ],
                //   ),
                // ),
                // SizedBox(
                //   height: 40,
                // ),
                // // GestureDetector(
                // //   onTap:(){
                // //     AuthController.instance.register(email, password)
                // //   },
                // // )
                // Container(
                //   height: 50,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(10),
                //     gradient: LinearGradient(
                //       colors: [Color(0XFFFB415B), Color(0XFFEE5623)],
                //     ),
                //   ),
                //   // padding: EdgeInsets.symmetric(vertical: 20),
                //   child: Center(
                //     child: Text(
                //       "Create Account",
                //       style: TextStyle(
                //         color: Colors.white,
                //         fontSize: 20,
                //       ),
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: w * 0.2,
                // ),
                // RichText(
                //   text: TextSpan(
                //       text: "Already have an account ",
                //       style: TextStyle(color: Colors.white70, fontSize: 16),
                //       children: [
                //         TextSpan(
                //           text: "LogIn",
                //           style: TextStyle(
                //               color: Colors.white,
                //               fontSize: 17,
                //               fontWeight: FontWeight.bold),
                //         )
                //       ]),
                // )

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Form(
                        key: _fromkey,
                        child: Column(
                          children: [
                            TextFormField(
                              keyboardType: TextInputType.name,
                              controller: fullnameControlller,
                              decoration: const InputDecoration(
                                hintText: 'Full name',
                                suffixIcon: Icon(Icons.person),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter name';
                                }

                                // Update the regular expression to allow spaces
                                final RegExp nameRegex =
                                    RegExp(r'^[a-zA-Z ]{3,25}$');

                                if (!nameRegex.hasMatch(value)) {
                                  return 'Name should consist of only alphabetical characters and have 3 to 25 characters.';
                                }

                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                controller: emailController,
                                decoration: const InputDecoration(
                                    hintText: 'Email',
                                    suffixIcon: Icon(Icons.alternate_email)),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Enter email';
                                  }
                                  // Define a regular expression to match the email format.
                                  final RegExp emailRegExp = RegExp(
                                      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

                                  if (!emailRegExp.hasMatch(value)) {
                                    return 'Invalid email address format';
                                  }

                                  return null;
                                }),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: phonenoController,
                              keyboardType: TextInputType.text,
                              decoration: const InputDecoration(
                                hintText: 'XXXX-XXXXXXX',
                                suffixIcon: Icon(Icons.add_call),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Enter phone no';
                                }

                                // Define a regular expression to match the phone number format.
                                final RegExp phoneRegExp =
                                    RegExp(r'^\d{4}-\d{7}$');

                                if (!phoneRegExp.hasMatch(value)) {
                                  return 'Invalid phone number format. Use XXXX-XXXXXXX';
                                }

                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                                controller: passwordController,
                                keyboardType: TextInputType.text,
                                obscureText: true,
                                decoration: const InputDecoration(
                                    hintText: 'password',
                                    suffixIcon: Icon(Icons.lock_open)),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Enter password';
                                  }
                                  final RegExp passwordRegExp = RegExp(
                                      r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$');

                                  if (!passwordRegExp.hasMatch(value)) {
                                    return 'Password must contain at least 8 characters with \n alphabets, numbers, and special characters';
                                  }
                                  return null;
                                }),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                                controller: confirmpasswordController,
                                keyboardType: TextInputType.text,
                                obscureText: true,
                                decoration: const InputDecoration(
                                    hintText: ' Confirm password',
                                    suffixIcon: Icon(Icons.lock_open)),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Reenter password';
                                  }

                                  // Check if the password matches the value in the password field.
                                  if (value != passwordController.text) {
                                    return 'Passwords do not match';
                                  }

                                  return null;
                                }),
                          ],
                        )),
                    SizedBox(
                      height: 50,
                    ),
                    RoundButton(
                      title: 'Create Account',
                      loading: loading,
                      onTap: () {
                        if (_fromkey.currentState!.validate()) {
                          isFromValid = true;

                          final user = UserModel(
                            fullname: fullnameControlller.text.trim(),
                            email: emailController.text.trim(),
                            password: passwordController.text.trim(),
                            Confirmpassword:
                                confirmpasswordController.text.trim(),
                            role: 'customer',
                            phoneno: phonenoController.text.trim(),
                          );

                          register();
                          UserRepository.instance.createUser(user);

                          // Corrected the line here
                        }

                        if (isFromValid) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => login()));
                        }
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?"),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => login()));
                            },
                            child: Text("Login"))
                      ],
                    )
                  ],
                )
              ]))
            ],
          ),
        ))
      ]),
    );
  }
}
