// ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:travel_point/main.dart';
import 'package:travel_point/screens/login/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});
  static const routeName = 'login-screen';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String assetImage = 'https://telegra.ph/file/9aa2770b195550c2b113a.png';

  bool isvisible = true;
  String errorMessage = '';
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final borderRadiusM = MediaQuery.of(context).size.width * 0.016 + MediaQuery.of(context).size.height * 0.016;
    // final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFE0EDFE),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: height,
              // width: width * 0.53,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(borderRadiusM),
                  bottomLeft: Radius.circular(borderRadiusM),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: borderRadiusM * 4,
                  left: borderRadiusM * 2,
                  right: borderRadiusM * 2,
                  bottom: borderRadiusM,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                        color: Color(0xFF002642),
                        fontWeight: FontWeight.bold,
                        fontSize: borderRadiusM + 10,
                      ),
                    ),
                    SizedBox(
                      height: borderRadiusM / 3.8,
                    ),
                    Text(
                      'Please login to continue',
                      style: TextStyle(
                        color: Color(0xFF002642),
                        fontWeight: FontWeight.w500,
                        fontSize: borderRadiusM,
                      ),
                    ),
                    SizedBox(
                      height: borderRadiusM * 6,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please, enter your username!';
                        } else if (errorMessage == 'Error') {
                          return 'Incorrect username or password';
                        }
                        return null;
                      },
                      controller: usernameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Username',
                      ),
                    ),
                    SizedBox(
                      height: borderRadiusM,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please, enter your email!';
                        } else if (errorMessage == 'Error') {
                          return 'Incorrect username or password';
                        }
                        return null;
                      },
                      controller: emailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Email',
                      ),
                    ),
                    SizedBox(
                      height: borderRadiusM,
                    ),
                    TextFormField(
                      controller: passwordController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please, enter your password!';
                        } else if (errorMessage == 'Error') {
                          return 'Incorrect username or password';
                        }
                        return null;
                      },
                      obscureText: isvisible,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Password',
                        suffixIcon: IconButton(
                          icon: isvisible == true
                              ? const Icon(
                                  Icons.visibility,
                                  color: Colors.grey,
                                )
                              : const Icon(
                                  Icons.visibility_off,
                                  color: Colors.grey,
                                ),
                          onPressed: () {
                            setState(() {
                              isvisible = !isvisible;
                            });
                          },
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Row(
                      children: [
                        Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text('Forgot Password'),
                        ),
                      ],
                    ),
                    Spacer(
                      flex: 4,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      child: Text('Already have an account?'),
                    ),
                    Spacer(
                      flex: 4,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: height * 0.055,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyApp()));
                          }
                          return;
                        },
                        child: Text('Login'),
                      ),
                    ),
                    Spacer(
                      flex: 8,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
