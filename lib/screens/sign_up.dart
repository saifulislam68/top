// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/screens/sign_in.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    bool _obscureText = true;

    String _password;

    // Toggles the password show status
    void _toggle() {
      setState(() {
        _obscureText = !_obscureText;
      });
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          size: 30,
          color: Color(0xff717272),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset(
                    'assets/images/onest.png',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Sign Up',
                  style: GoogleFonts.lora(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                // SizedBox(
                //   height: 10,
                // ),
                // Text(
                //   'Welcome Back',
                //   style: GoogleFonts.lora(
                //     fontSize: 24,
                //   ),
                // ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.person),
                            hintText: 'Name'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.email),
                            hintText: 'Email'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.call),
                            hintText: 'Phone'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.lock),
                            // suffixIcon: Icon(Icons.remove_red_eye),
                            hintText: 'Password'),
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
                    Icon(
                      Icons.check_box,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 25.0),
                      child: Container(
                        decoration: BoxDecoration(),
                        child: Row(
                          children: [
                            Text(
                              ' I agree to',
                              style: GoogleFonts.lora(
                                color: Color(0xffb7b7b7),
                              ),
                            ),
                            Text(
                              'Terms',
                              style: GoogleFonts.lora(
                                color: Color(0xfffaa124),
                              ),
                            ),
                            Text(
                              '&',
                              style: GoogleFonts.lora(
                                color: Color(0xffb7b7b7),
                              ),
                            ),
                            Text(
                              'Privacy Policy',
                              style: GoogleFonts.lora(
                                color: Color(0xfffaa124),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color(0xFF7f58fe),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        'Registration',
                        style: GoogleFonts.lora(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Text(
                      'OR',
                      style: GoogleFonts.lora(
                        fontSize: 18,
                        color: Color(0xff666666),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Create account with',
                      style: GoogleFonts.lora(
                        fontSize: 20,
                        color: Color(0xff666666),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Image.asset(
                            'assets/images/gogolelogo.png',
                            width: 55,
                            height: 80,
                          ),
                        ),
                        Container(
                          child: Image.asset(
                            'assets/images/fblogo.png',
                            height: 80,
                            width: 63,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style: GoogleFonts.lora(
                            fontSize: 18,
                            color: Color(0xff666666),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => LoginPage())));
                          },
                          child: Text(
                            ' Sign in',
                            style: GoogleFonts.lora(
                              fontSize: 20,
                              color: Color(0xfffaa124),
                            ),
                          ),
                        ),
                      ],
                    )
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
