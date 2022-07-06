import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Comment extends StatelessWidget {
  const Comment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/man.png'),
                  ),
                  Text(
                    'Jo biden',
                    style: GoogleFonts.nunito(
                        fontSize: 16, color: Color(0xff444444)),
                  ),
                  Text(
                    '15 day ago',
                    style: GoogleFonts.nunito(
                        fontSize: 12, color: Color(0xff444444)),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10.0),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Lorem Ipsum is simply dummy text of the printing ',
                        style: GoogleFonts.lora(fontSize: 13),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            icon: Icon(Icons.arrow_upward),
                            onPressed: () {
                              showModalBottomSheet(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(30))),
                                  context: context,
                                  builder: (context) {
                                    return ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Container(
                                        height: 250,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            children: [
                                              Icon(
                                                Icons.horizontal_rule,
                                                color: Colors.grey,
                                              ),
                                              Row(
                                                children: [
                                                  CircleAvatar(
                                                    radius: 30,
                                                    backgroundImage: AssetImage(
                                                        'assets/images/man.png'),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  });
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
