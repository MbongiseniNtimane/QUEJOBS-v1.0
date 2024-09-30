import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:que_jobs/screens/loginpage.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _isObscure = true;
  bool _isObscure2 = true;

  final _formkey = GlobalKey<FormState>();

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpassController = TextEditingController();
  final TextEditingController name = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController dateOfBirthController = TextEditingController();
  final TextEditingController idNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Registration"),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  child: SingleChildScrollView(
                    child: Container(
                      margin: const EdgeInsets.all(12),
                      //form that contains textfields
                      child: Form(
                        key: _formkey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 80,
                            ),
                            const Text(
                              "Register Now",
                              style: TextStyle(
                                color: Colors.amber,
                                fontSize: 40,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: name,
                              decoration: InputDecoration(
                                filled: true,
                                prefixIcon: const Icon(
                                  Icons.person,
                                  color: Colors.blue,
                                ),
                                fillColor: const Color(0xFFedf0f8),
                                hintText: 'Name',
                                enabled: true,
                                contentPadding: const EdgeInsets.only(
                                    left: 14.0, bottom: 8.0, top: 8.0),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.amber),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.amber),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Name is required";
                                } else {
                                  return null;
                                }
                              },
                              onChanged: (value) {},
                              keyboardType: TextInputType.emailAddress,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: emailController,
                              decoration: InputDecoration(
                                filled: true,
                                prefixIcon: const Icon(
                                  Icons.email,
                                  color: Colors.blue,
                                ),
                                fillColor: const Color(0xFFedf0f8),
                                hintText: 'Email',
                                enabled: true,
                                contentPadding: const EdgeInsets.only(
                                    left: 14.0, bottom: 8.0, top: 8.0),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.amber),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.amber),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              validator: (value) {
                                if (value!.length == 0) {
                                  return "Email cannot be empty";
                                }
                                if (!RegExp(
                                        "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                    .hasMatch(value)) {
                                  return ("Please enter a valid email");
                                } else {
                                  return null;
                                }
                              },
                              onChanged: (value) {},
                              keyboardType: TextInputType.emailAddress,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: idNumber,
                              decoration: InputDecoration(
                                filled: true,
                                prefixIcon: const Icon(
                                  Icons.calendar_today,
                                  color: Colors.blue,
                                ),
                                fillColor: const Color(0xFFedf0f8),
                                hintText: 'ID',
                                enabled: true,
                                contentPadding: const EdgeInsets.only(
                                    left: 14.0, bottom: 8.0, top: 8.0),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.amber),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.amber),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "ID is required";
                                } else {
                                  return null;
                                }
                              },
                              onChanged: (value) {},
                              keyboardType: TextInputType.number,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: dateOfBirthController,
                              decoration: InputDecoration(
                                filled: true,
                                prefixIcon: const Icon(
                                  Icons.calendar_today,
                                  color: Colors.blue,
                                ),
                                fillColor: const Color(0xFFedf0f8),
                                hintText: 'Date of Birth',
                                enabled: true,
                                contentPadding: const EdgeInsets.only(
                                    left: 14.0, bottom: 8.0, top: 8.0),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.amber),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.amber),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Date of birth is required";
                                } else {
                                  return null;
                                }
                              },
                              onChanged: (value) {},
                              keyboardType: TextInputType.number,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: phoneController,
                              decoration: InputDecoration(
                                filled: true,
                                prefixIcon: const Icon(
                                  Icons.phone,
                                  color: Colors.blue,
                                ),
                                fillColor: const Color(0xFFedf0f8),
                                hintText: 'Mobile number',
                                enabled: true,
                                contentPadding: const EdgeInsets.only(
                                    left: 14.0, bottom: 8.0, top: 8.0),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.amber),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.amber),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Phone number is required";
                                } else {
                                  return null;
                                }
                              },
                              onChanged: (value) {},
                              keyboardType: TextInputType.number,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              controller: passwordController,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.lock,
                                  color: Colors.blue,
                                ),
                                suffixIcon: IconButton(
                                    icon: Icon(_isObscure
                                        ? Icons.visibility_off
                                        : Icons.visibility),
                                    onPressed: () {
                                      setState(() {
                                        _isObscure = !_isObscure;
                                      });
                                    }),
                                filled: true,
                                fillColor: const Color(0xFFedf0f8),
                                hintText: 'Password',
                                enabled: true,
                                contentPadding: const EdgeInsets.only(
                                    left: 14.0, bottom: 8.0, top: 15.0),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.amber),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.amber),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              validator: (value) {
                                RegExp regex = RegExp(r'^.{8,}$');
                                if (value!.isEmpty) {
                                  return "Password cannot be empty";
                                }
                                if (!regex.hasMatch(value)) {
                                  return ("please enter valid password min. 8 character");
                                } else {
                                  return null;
                                }
                              },
                              onChanged: (value) {},
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              obscureText: _isObscure2,
                              controller: confirmpassController,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.lock,
                                  color: Colors.blue,
                                ),
                                suffixIcon: IconButton(
                                    icon: Icon(_isObscure2
                                        ? Icons.visibility_off
                                        : Icons.visibility),
                                    onPressed: () {
                                      setState(() {
                                        _isObscure2 = !_isObscure2;
                                      });
                                    }),
                                filled: true,
                                fillColor: const Color(0xFFedf0f8),
                                hintText: 'Confirm Password',
                                enabled: true,
                                contentPadding: const EdgeInsets.only(
                                    left: 14.0, bottom: 8.0, top: 15.0),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.amber),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.amber),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              validator: (value) {
                                if (confirmpassController.text !=
                                    passwordController.text) {
                                  return "Password did not match";
                                } else {
                                  return null;
                                }
                              },
                              onChanged: (value) {},
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            MaterialButton(
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0))),
                              elevation: 5.0,
                              height: 40,
                              onPressed: () {},
                              color: Colors.white,
                              child: const Text(
                                "Register",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Already have an account?",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    const CircularProgressIndicator();
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => LoginApp(),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    "login",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
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
