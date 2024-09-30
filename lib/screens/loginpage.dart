import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:que_jobs/screens/MainScreen.dart';
import 'package:que_jobs/screens/Register.dart';

void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatefulWidget {
  const LoginApp({super.key});

  @override
  State<LoginApp> createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  TextEditingController emailAddressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailAddressController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _login() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (_) => MainScreen(
                    userEmail: emailAddressController.text,
                    outcome: '',
                  )));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.lightBlue,
            title: const Text('QueJobs Login',
                style: TextStyle(color: Colors.black, fontSize: 30)),
          ),
          body: Center(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: emailAddressController,
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        icon: Icon(Icons.email_outlined),
                        labelText: " Please Enter your Email Address",
                        labelStyle: TextStyle(color: Colors.brown),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Colors.amber.shade800)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Colors.amber.shade800)),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter email address";
                        } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                            .hasMatch(value)) {
                          return "Invalid email address";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        icon: Icon(Icons.lock),
                        labelText: " Please Enter your Password",
                        labelStyle: TextStyle(color: Colors.brown),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Colors.amber.shade800)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Colors.amber.shade800)),
                      ),
                      validator: (value) {
                        //validation for our password
                        if (value == null) {
                          return 'Password cannot be empty';
                        } else if (value.length < 8) {
                          return 'Password must be at least 8 characters and contain @ symbol';
                        } else if (!value.contains('@')) {
                          return 'Password must have the @ character';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 13),
                  ElevatedButton(
                    onPressed: _login,
                    child: const Text("Login"),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Register()));
                        },
                        child: const Text(
                          "Signup",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
