import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/screens/forget_password.dart';
import 'package:login/screens/sign_up.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
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
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Sign In',
                  style: GoogleFonts.lora(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                // SizedBox(
                //   height: 10,
                // ),
                // Text(
                //   'Welcome Back',
                //   style: TextStyle(
                //     fontSize: 24,
                //   ),
                // ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.call),
                            hintText: 'Phone'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
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
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: TextField(
                        obscureText: true,
                        // ignore: unnecessary_const
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.lock),
                            // suffixIcon: Icon(Icons.remove_red_eye),
                            hintText: 'Password'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 25.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => ForgetPassword())));
                        },
                        child: Text(
                          'forget password',
                          style: GoogleFonts.lora(
                            color: Color(0xfffaa124),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xFF7f58fe),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        'Sign In',
                        style: GoogleFonts.lora(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Text(
                      'OR',
                      style: GoogleFonts.lora(
                        fontSize: 18,
                        color: const Color(0xff666666),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'sign in with',
                      style: GoogleFonts.lora(
                        fontSize: 20,
                        color: Color(0xff666666),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Image.asset(
                            'assets/images/gogolelogo.png',
                            width: 50,
                          ),
                        ),
                        Container(
                          child: Image.asset(
                            'assets/images/fblogo.png',
                            width: 63,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Dont have account?',
                          style: GoogleFonts.lora(
                            fontSize: 18,
                            color: Color(0xff666666),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => SignUp())));
                          },
                          child: Text(
                            ' Sign up',
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
