import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GlassBox extends StatelessWidget {
  const GlassBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        height: 210,
        width: 400,
        child: Column(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 5,
                sigmaY: 5,
              ),
              child: Container(),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white.withOpacity(0.6),
                    Colors.white.withOpacity(0.6),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Tuesday,28 june 2022'),
                      Text('Published By Ryan Browne')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Take a look at Padma Bridges world records. This is the worlds deepest bridge.',
                    style: GoogleFonts.lora(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffF4F0FF),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 5.0, horizontal: 12),
                        child: Text(
                          "Trending",
                          style: GoogleFonts.lora(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff7F58FE),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffF4F0FF),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 5.0, horizontal: 12),
                        child: Text(
                          "War",
                          style: GoogleFonts.lora(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff7F58FE),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffF4F0FF),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 5.0, horizontal: 12),
                        child: Text(
                          "World",
                          style: GoogleFonts.lora(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff7F58FE),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
