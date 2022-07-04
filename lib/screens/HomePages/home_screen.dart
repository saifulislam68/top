// import 'package:carousel_pro/carousel_pro.dart';
// import 'package:flutter/cupertino.dart';

// import 'package:carousel_pro/carousel_pro.dart';
// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/SearchScreens/search.dart';
import 'package:login/screens/HomePages/app_drawer.dart';
import 'package:login/screens/HomePages/online_vote.dart';
import 'package:login/screens/HomePages/opinion_page.dart';
import 'package:login/screens/HomePages/popular_page.dart';

// import 'package:chips_choice/chips_choice.dart';
// import 'package:chips_choice/chips_choice.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Home',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // ignore: non_constant_identifier_names
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

  final List<String> images = [
    'https://i.ytimg.com/vi/H4UHpJMd5qo/maxresdefault.jpg',
    'https://i.ytimg.com/vi/H4UHpJMd5qo/maxresdefault.jpg'
  ];
  // single choice value
  int tag = 1;

  // list of string options
  List<String> options = [
    'News',
    'Entertainment',
    'Politics',
    'Automotive',
    'Sports',
    'Education',
    'Fashion',
    'Travel',
    'Food',
    'Tech',
    'Science',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(
            size: 30,
            color: Color(0xff717272),
          ),
          title: Center(
              child: Image.asset(
            'assets/images/newslogo.png',
            width: 107,
            height: 22,
          )),
          // leading: IconButton(
          //   icon: const Icon(
          //     Icons.menu,
          //     color: Colors.black,
          //   ),
          //   onPressed: () {
          //     Scaffold.of(context).A();
          //   },
          // ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Search())));
                },
                icon: const Icon(
                  Icons.search,
                  color: Color(0xff717272),
                )),
            InkWell(
              child: Image.asset('assets/images/Vector (4).png'),
              onTap: () {},
            )
            // IconButton(
            //   onPressed: () {},
            //   icon: const Icon(
            //     Icons.notifications,
            //     color: Color(0xff717272),
            //   ),
            // ),
          ],
        ),
        drawer: AppDrawer(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                ChipsChoice<int>.single(
                  value: tag,
                  onChanged: (val) => setState(() => tag = val),
                  choiceItems: C2Choice.listFrom<int, String>(
                    source: options,
                    value: (i, v) => i,
                    label: (i, v) => v,
                  ),
                  choiceStyle: const C2ChoiceStyle(
                      color: Color(0xffB1B1B1),
                      borderColor: Color(0xffB1B1B1),
                      backgroundColor: Color(0xffF9FAFB),
                      showCheckmark: false),
                  choiceActiveStyle: const C2ChoiceStyle(
                      showCheckmark: false,
                      backgroundColor: Color(0xFF7F58FE),
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Latest News',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
                              padding:
                                  const EdgeInsets.only(left: 15.0, top: 12),
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
                              padding:
                                  const EdgeInsets.only(left: 15.0, top: 12),
                              child: Text(
                                "Memorable celebration planned for padma bridge inauguration.",
                                style: GoogleFonts.lora(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                const SizedBox(
                  height: 20,
                ),
                DefaultTabController(
                  length: 2,
                  child: TabBar(
                    labelColor: Colors.black,
                    labelStyle: GoogleFonts.lora(
                        fontSize: 18, fontWeight: FontWeight.bold),
                    tabs: const [
                      Tab(
                        text: 'Popular News',
                      ),
                      Tab(
                        text: 'Top News',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const PopularPage(),
                Divider(),

                const PopularPage(),
                Divider(),
                const PopularPage(),
                // ListView.builder(
                //   shrinkWrap: true,
                //   physics: NeverScrollableScrollPhysics(),
                //   padding: const EdgeInsets.all(8),
                //   itemCount: posts.length,
                //   itemBuilder: (BuildContext context, int index) {
                //     return Dummy(
                //       title: posts[index].title,
                //       imageUrl: posts[index].imageUrl,
                //       description: posts[index].description,
                //     );
                //   },
                // ),

                const SizedBox(
                  height: 10,
                ),
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
                  // margin: const EdgeInsets.symmetric(vertical: 20),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Online Vote',
                      style: GoogleFonts.lora(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(
                  height: 400,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemExtent: 230.0,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return const OnlineVote();
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Opinion',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.black),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const OpinionPage(),
                Divider(),
                const OpinionPage(),
                Divider(),
                const OpinionPage(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Color(0xff717171)),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border, color: Color(0xff717171)),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.face, color: Color(0xff717171)),
              label: 'profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined, color: Color(0xff717171)),
              label: 'Categories',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

class News {
  String? title;
  String? description;
  String? imageUrl;

  News({this.title, this.description, this.imageUrl});
}
