import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cosme/utils/message.dart';
import 'package:cosme/widget/button/round_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Registeration_page.dart';
import 'home/info_page.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool loading = false;
  final _formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _fire = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  void initState() {
    // checkPer();
    super.initState();
  }

  void login() {
    setState(() {
      loading = true;
    });
    _auth
        .signInWithEmailAndPassword(
            email: emailController.text,
            password: passwordController.text.toString())
        .then((value) async {
      // Check if the user is authenticated
      if (value.user != null) {
        final userId = value.user!.uid;
        final userObj = await _fire
            .collection("Users")
            .where("Email", isEqualTo: emailController.text)
            .get();
// .first["role"] == "manager"
        // print(userObj.docs.first.data());
        final userRole = userObj.docs.first.data()["role"];
        if (userRole == "customer") {
          Navigator.pushAndRemoveUntil(context,
              MaterialPageRoute(builder: (e) => Info()), (route) => false);
        } else if (userRole == "Admin") {
          // Handle the driver role
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (e) => Info()),
            (route) => false,
          );
        } else if (userRole == "new user") {
          // Handle the guardian role
          // For example, navigate to the GuardianDashboard
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (e) => Info()),
            (route) => false,
          );
        } else {
          print("no user found");
        }

        setState(() {
          loading = false;
        });
      }
    }).onError((error, stackTrace) {
      debugPrint(error.toString());
      Mmessage().toastMessage(error.toString());
      setState(() {
        loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/background.jpg"),
                ),
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                width: 340,
                height: 500,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0XFFEC7D7F)),
                child: Column(children: [
                  Row(
                    children: [
                      Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/logo.png")))),
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
                  //   child: SingleChildScrollView(
                  //     child: Column(
                  //       children: [
                  //         TextFormField(
                  //             decoration: InputDecoration(
                  //                 hintText: "Email",
                  //                 icon: Padding(
                  //                   padding: EdgeInsets.only(
                  //                       left:
                  //                           8.0), // Adjust the padding as needed
                  //                   child: Icon(Icons.email),
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
                  //       ],
                  //     ),
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
                  //   child: SingleChildScrollView(
                  //     child: Column(
                  //       children: [
                  //         TextFormField(
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
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                  // Row(
                  //   children: [
                  //     Expanded(
                  //       child: Container(),
                  //     ),
                  //     Text(
                  //       "Forget your Password",
                  //       style: TextStyle(
                  //           color: Colors.white,
                  //           fontSize: 12,
                  //           fontWeight: FontWeight.bold),
                  //     ),
                  //   ],
                  // ),
                  // SizedBox(
                  //   height: 40,
                  // ),
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
                  //       "LogIn",
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
                  //       text: "Don't have an account? ",
                  //       style: TextStyle(color: Colors.white70, fontSize: 16),
                  //       children: [
                  //         TextSpan(
                  //             text: "Create ",
                  //             style: TextStyle(
                  //                 color: Colors.white,
                  //                 fontSize: 17,
                  //                 fontWeight: FontWeight.bold),
                  //             recognizer: TapGestureRecognizer()
                  //               ..onTap = () => Get.to(() => registeration()))
                  //       ]),
                  // )

                  Form(
                      key: _formkey,
                      child: Column(
                        children: [
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
                                return null;
                              }),
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
                                return null;
                              }),
                        ],
                      )),
                  SizedBox(
                    height: 40,
                  ),
                  RoundButton(
                    title: 'Login',
                    loading: loading,
                    onTap: () {
                      if (_formkey.currentState!.validate()) {
                        login();
                      }
                    },
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          // MaterialPageRoute(
                          //     builder: (context) => forgetpassword(
                          //       selectRoute: widget.selectRoute,
                          //       fee: widget.fee,
                          //       // bus:widget.bus,
                          //     ))

                          // );
                        },
                        child: Text("Forgot password")),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?"),
                      TextButton(
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            // MaterialPageRoute(
                            //     builder: (context) => RollButton(
                            //       email: "",
                            //       role: "",
                            //     ))

                            // );
                          },
                          child: Text("Sign up"))
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ]),
              ),
            ),
          ],
        ));
  }
}
