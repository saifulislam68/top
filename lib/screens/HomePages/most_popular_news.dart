import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MostPopularNews extends StatefulWidget {
  const MostPopularNews({Key? key}) : super(key: key);

  @override
  State<MostPopularNews> createState() => _MostPopularNewsState();
}

class _MostPopularNewsState extends State<MostPopularNews> {
  Container MyData(String imageVal, String heading, String subHeading) {
    return Container(
      width: 180,
      child: Card(
        child: Wrap(
          children: [
            Image.asset(imageVal),
            ListTile(
              title: Text(heading),
              subtitle: Text(subHeading),
            ),
          ],
        ),
      ),
    );
  }

  Container MyData1(
    String imageVal,
    String heading,
  ) {
    return Container(
      width: 180,
      child: Card(
        child: Wrap(
          children: [
            Stack(clipBehavior: Clip.none, children: [
              Image.asset(
                imageVal,
                width: 180,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 30,
                left: -5,
                right: 0,
                child: Center(
                  child: Image.asset('assets/images/Vector(5).png'),
                ),
              ),
              Positioned(
                bottom: 37,
                left: 0,
                right: 0,
                child: Center(
                  child: Image.asset('assets/images/playbutton.png'),
                ),
              ),
            ]),
            ListTile(
              title: Text(
                heading,
                style: GoogleFonts.nunito(fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text(
              'Most Popular News',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black),
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          margin: const EdgeInsets.symmetric(vertical: 10),
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              MyData1(
                'assets/images/img2.png',
                'Padma Bridge benefits',
              ),
              MyData1(
                'assets/images/img2.png',
                'Padma Bridge benefits',
              ),
              MyData1(
                'assets/images/img2.png',
                'Padma Bridge benefits',
              ),
            ],
          ),
        ),
        Container(
          // margin: const EdgeInsets.symmetric(vertical: 10),
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              MyData1(
                'assets/images/img2.png',
                'Padma Bridge benefits',
              ),
              MyData1(
                'assets/images/img2.png',
                'Padma Bridge benefits',
              ),
              MyData1(
                'assets/images/img2.png',
                'Padma Bridge benefits',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
