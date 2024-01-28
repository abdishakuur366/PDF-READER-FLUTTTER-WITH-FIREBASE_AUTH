import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Reset_Password extends StatefulWidget {
  const Reset_Password({super.key});

  @override
  State<Reset_Password> createState() => _Reset_PasswordState();
}

class _Reset_PasswordState extends State<Reset_Password> {
  final _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "PDF READER",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 62, 5, 153),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.lock_reset,
                    size: 100,
                    color: Color.fromARGB(255, 62, 5, 153),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Reset Password",
                    style: TextStyle(
                        fontSize: 40,
                        color: Color.fromARGB(255, 62, 5, 153),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Use your email to reset password!",
                      style: TextStyle(
                        fontSize: 20,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        prefixIconColor: Color.fromARGB(255, 62, 5, 153),
                        prefixIcon: Icon(Icons.email),
                        hintText: 'Enter E-mail',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 62, 5, 153),
                            width: 2,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 62, 5, 153),
                            width: 4,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 10), // Adds space between the fields

                  // GestureDetector(
                  //   onTap: () {
                  //     print("tapp");
                  //   },
                  //   child: Container(
                  //     margin: EdgeInsets.symmetric(horizontal: 6),
                  //     width: double.infinity,
                  //     height: 60,
                  //     decoration: BoxDecoration(
                  //       color: Color.fromARGB(255, 62, 5, 153),
                  //       borderRadius: BorderRadius.circular(15.0),
                  //     ),
                  //     child: Center(
                  //       child: Text(
                  //         "Reset",
                  //         style: TextStyle(
                  //             color: Colors.white,
                  //             fontSize: 20,
                  //             fontWeight: FontWeight.bold),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 62, 5, 153),
                      // foregroundColor: Color.fromRGBO(100, 299, 388, 100),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      elevation: 5,
                      fixedSize: Size(400, 60),
                    ),
                    onPressed: () async {
                      try {
                        await FirebaseAuth.instance.sendPasswordResetEmail(
                            email: _emailController.text);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              "Check your email to reset your password!",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            backgroundColor: Color.fromARGB(255, 62, 5, 153),
                          ),
                        );
                        _emailController.clear();
                      } catch (e) {
                        print(e);
                      }
                      print("onPressed");
                    },
                    icon: Icon(
                      Icons.restore_outlined,
                      color: Colors.white,
                    ),
                    label: Text(
                      "Reset",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
