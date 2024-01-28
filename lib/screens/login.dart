import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:our_final_project/main.dart';
import 'package:our_final_project/screens/dashboard.dart';
import 'package:our_final_project/screens/reset_password.dart';
import 'package:our_final_project/screens/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isHidden = true;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  clearFields() {
    _emailController.clear();
    _passwordController.clear();
  }

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.lock,
                  size: 100,
                  color: Color.fromARGB(255, 62, 5, 153),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 40,
                      color: Color.fromARGB(255, 62, 5, 153),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Welcome back dear user😍😍",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
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
                    ),
                  ),
                ),

                SizedBox(height: 10), // Adds space between the fields

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: isHidden, // Use for password to hide input
                    decoration: InputDecoration(
                      prefixIconColor: Color.fromARGB(255, 62, 5, 153),
                      prefixIcon: Icon(Icons.vpn_key),
                      suffixIconColor: Color.fromARGB(255, 62, 5, 153),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isHidden = !isHidden;
                          });
                        },
                        icon: Icon(
                          isHidden ? Icons.visibility_off : Icons.visibility,

                          // color: Colors.grey,
                        ),
                      ),
                      hintText: '**************',
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
                    ),
                  ),
                ),

                // SizedBox(height: 10), // Adds space between the fields
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Reset_Password()),
                        );
                      },
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(
                          color: Color.fromARGB(255, 62, 5, 153),
                          fontWeight: FontWeight.normal,
                          textBaseline: TextBaseline.alphabetic,
                        ),
                      )),
                ),

                GestureDetector(
                  onTap: () async {
                    try {
                      // await FirebaseAuth.instance.signInWithEmailAndPassword(
                      //   email: _emailController.text,
                      //   password: _passwordController.text,
                      // );
                      await FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: _emailController.text,
                        password: _passwordController.text,
                      );

                      clearFields();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Logged Successfully!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          backgroundColor: Colors.green,
                        ),
                      );
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => homepage(),
                        ),
                      );
                    } catch (error) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Error ayaa jiro \n $error",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                    // print("tapp");

                    setState(() {
                      void showLoginSuccessDialog(BuildContext context) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Login Successful"),
                              content: Text("You have logged in successfully."),
                              actions: [
                                // ElevatedButton(
                                //   child: Text("OK"),
                                //   onPressed: () {
                                //     Navigator.of(context)
                                //         .pop(); // Close the dialog
                                //   },
                                // ),
                              ],
                            );
                          },
                        );
                      }
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 6),
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 62, 5, 153),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Center(
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: Text(
                        "Register Now!",
                        style: TextStyle(
                            color: Color.fromARGB(255, 62, 5, 153),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
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
