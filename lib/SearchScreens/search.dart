import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/screens/HomePages/popular_page.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          size: 30,
          color: Color(0xff717272),
        ),
        title: Center(
            child: Text(
          'Search',
          style: GoogleFonts.lora(color: Colors.black, fontSize: 24),
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
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Color(0xff717272),
              )),
          // InkWell(
          //   child: Image.asset('assets/images/Vector (4).png'),
          //   onTap: () {},
          // )
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(16)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    child: Row(
                      children: const [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                icon: Icon(Icons.search),
                                hintText: 'Search'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
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
                SizedBox(
                  height: 15,
                ),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Search Result : ',
                          style: GoogleFonts.lora(
                              fontSize: 16, color: Colors.black)),
                      TextSpan(
                          text: '1000 Found',
                          style: GoogleFonts.lora(
                              fontSize: 16, color: Color(0xff7F58FE))),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                PopularPage(),
                Divider(),
                PopularPage(),
                Divider(),
                PopularPage(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
