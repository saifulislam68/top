// import 'package:carousel_pro/carousel_pro.dart';
// import 'package:flutter/cupertino.dart';

// import 'package:carousel_pro/carousel_pro.dart';
// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/SearchScreens/search.dart';
import 'package:login/app_drawer.dart';
import 'package:login/screens/HomePages/latest_news.dart';
import 'package:login/screens/HomePages/most_popular_news.dart';
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

  final List<String> images = [
    'https://i.ytimg.com/vi/H4UHpJMd5qo/maxresdefault.jpg',
    'https://i.ytimg.com/vi/H4UHpJMd5qo/maxresdefault.jpg'
  ];
  // single choice value
  int tag = 0;

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
                LatestNews(),
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
                const SizedBox(
                  height: 10,
                ),
                MostPopularNews(),
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
