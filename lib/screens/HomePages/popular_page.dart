import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/screens/DetailPages/top_news.dart';

class PopularPage extends StatelessWidget {
  const PopularPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: ((context) => TopNews())));
      },
      child: Row(
        children: [
          Stack(clipBehavior: Clip.none, children: [
            Image.asset('assets/images/sheikhHasina.png'),
            Positioned(
              bottom: 40,
              left: 0,
              right: 0,
              child: Center(
                child: Image.asset('assets/images/Vector(5).png'),
              ),
            ),
            Positioned(
              bottom: 47,
              left: 0,
              right: 0,
              child: Center(
                child: Image.asset('assets/images/playbutton.png'),
              ),
            ),
          ]),
          // const CircleAvatar(
          //   radius: 60,
          //   backgroundImage: AssetImage('assets/images/man.png'),
          // ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Crypto",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff7F58FE),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Padma Bridge: US, India, Pakistan commend Bangladesh',
                    style: GoogleFonts.nunito(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/Vector.png'),
                        const Text(
                          '1252',
                          style:
                              TextStyle(fontSize: 10, color: Color(0xff717171)),
                        ),
                        Image.asset('assets/images/Vector (1).png'),
                        const Text(
                          '252',
                          style:
                              TextStyle(fontSize: 10, color: Color(0xff717171)),
                        ),
                        Image.asset('assets/images/Vector (2).png'),
                        const Text(
                          '25',
                          style:
                              TextStyle(fontSize: 10, color: Color(0xff717171)),
                        ),
                        Image.asset('assets/images/Vector (3).png'),
                        const Text(
                          '45',
                          style:
                              TextStyle(fontSize: 10, color: Color(0xff717171)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
