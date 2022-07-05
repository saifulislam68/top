import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LatestNews extends StatefulWidget {
  const LatestNews({Key? key}) : super(key: key);

  @override
  State<LatestNews> createState() => _LatestNewsState();
}

class _LatestNewsState extends State<LatestNews> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Latest News',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Spacer(),
            Text(
              'See All',
              style: TextStyle(fontSize: 12, color: Color(0xff7F58FE)),
            ),
            Icon(
              Icons.arrow_forward,
              size: 12,
              color: Color(0xff7F58FE),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) {
              return SizedBox(
                width: 280,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Image.asset(
                          "assets/images/padma.png",
                          height: 185,
                          width: 260,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 12),
                      child: Text(
                        "Memorable celebration planned for padma bridge inauguration.",
                        style: GoogleFonts.lora(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffF4F0FF),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 12),
                            child: Text(
                              "Business",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff7F58FE),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: const Text(
                            "By Ryan Browne . 26 june 2022",
                            style: TextStyle(
                              fontSize: 11,
                              color: Color(0xff717171),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) {
              return SizedBox(
                width: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Image.asset(
                          "assets/images/padma.png",
                          height: 141,
                          width: 230,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 12),
                      child: Text(
                        "Memorable celebration planned for padma bridge inauguration.",
                        style: GoogleFonts.lora(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffF4F0FF),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 12),
                              child: Text(
                                "Crypto",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff7F58FE),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: const Text(
                              "26 june 2022",
                              style: TextStyle(
                                fontSize: 11,
                                color: Color(0xff717171),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
