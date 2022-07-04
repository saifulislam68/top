import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OpinionPage extends StatelessWidget {
  const OpinionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/man.png'),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        'Padma Bridge resolves an incompleteness of a nation state.',
                        style: GoogleFonts.lora(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    Text(
                      'Lorem Ipsum is simply dummy text of the printing ',
                      style: GoogleFonts.lora(fontSize: 13),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'By Ryan Browne',
                          style: GoogleFonts.lora(fontSize: 12),
                        ),
                        Text(
                          ' 10 min ago',
                          style: GoogleFonts.lora(fontSize: 12),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
