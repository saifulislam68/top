import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPassword extends StatefulWidget {
  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
      backgroundColor: const Color(0xffffffff),
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
                  height: 40,
                ),
                Text(
                  'Forget Password',
                  style: GoogleFonts.lora(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Text(
                      'We will send verification code to your ',
                      style: GoogleFonts.lora(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'phone to reset your password',
                      style: GoogleFonts.lora(
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
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
                        keyboardType: TextInputType.number,
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
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45.0),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xFF7f58fe),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        'Send',
                        style: GoogleFonts.lora(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t recive code?',
                      style: GoogleFonts.lora(
                        fontSize: 18,
                        color: Color(0xff666666),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      ' Resend',
                      style: GoogleFonts.lora(
                        fontSize: 18,
                        color: Color(0xfffaa124),
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
