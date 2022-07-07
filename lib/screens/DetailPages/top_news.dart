import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/screens/DetailPages/comment_popUp.dart';
import 'package:login/screens/DetailPages/glass_box.dart';

class TopNews extends StatefulWidget {
  const TopNews({Key? key}) : super(key: key);

  @override
  State<TopNews> createState() => _TopNewsState();
}

class _TopNewsState extends State<TopNews> {
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
          iconTheme: const IconThemeData(
            size: 20,
            color: Color(0xff717272),
          ),
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              'Top News',
              style: GoogleFonts.lora(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          // leading: IconButton(
          //   icon: const Icon(
          //     Icons.arrow_back_sharp,
          //     color: Colors.black,
          //   ),
          //   onPressed: () {
          //     Navigator.pop(context,
          //         MaterialPageRoute(builder: ((context) => PopularPage())));
          //   },
          // ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Color(0xff717272),
                )),
            // InkWell(
            //   child: Image.asset('assets/images/Vector (4).png'),
            //   onTap: () {},
            // )
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark_border,
                color: Color(0xff717272),
              ),
            ),
            IconButton(
              onPressed: () {
                showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(30))),
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Container(
                          height: 260,
                          child: Column(
                            children: [
                              const Icon(
                                Icons.horizontal_rule,
                                color: Colors.grey,
                              ),
                              Text(
                                'Share',
                                style: GoogleFonts.lora(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/whatsapp-icon.png',
                                      height: 40,
                                    ),
                                    Image.asset(
                                      'assets/images/facebook.icon.png',
                                      height: 80,
                                    ),
                                    Image.asset(
                                      'assets/images/whatsapp-icon.png',
                                      height: 80,
                                    ),
                                    Image.asset(
                                      'assets/images/facebook.icon.png',
                                      height: 80,
                                    ),
                                  ],
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/whatsapp-icon.png',
                                        height: 80,
                                      ),
                                      Image.asset(
                                        'assets/images/facebook.icon.png',
                                        height: 80,
                                      ),
                                      Image.asset(
                                        'assets/images/whatsapp-icon.png',
                                        height: 80,
                                      ),
                                      Image.asset(
                                        'assets/images/facebook.icon.png',
                                        height: 80,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    });
              },
              icon: const Icon(
                Icons.share_outlined,
                color: Color(0xff717272),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Color(0xff717272),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 300,
                    width: double.infinity,
                    child: Image.network(
                      "https://images.thedailystar.net/sites/default/files/images/2022/05/12/padma_bridge.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 270,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Container(
                        height: 100,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: -100,
                    left: 0,
                    right: 0,
                    child: Center(child: GlassBox()),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 70,
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'California -',
                            style: GoogleFonts.nunito(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black,
                                height: 1.5),
                          ),
                          TextSpan(
                            text:
                                ' It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s.!',
                            style: GoogleFonts.nunito(
                                fontSize: 16, color: Colors.black, height: 1.5),
                          ),
                        ],
                      ),
                    ),
                    // const Text(
                    //     'California - It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s.'),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature.',
                      style: GoogleFonts.nunito(fontSize: 16, height: 1.5),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('assets/images/nightBridge.png')),
                    const SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Oxford -',
                            style: GoogleFonts.nunito(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black,
                                height: 1.5),
                          ),
                          TextSpan(
                            text:
                                ' It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s.',
                            style: GoogleFonts.nunito(
                                fontSize: 16, color: Colors.black, height: 1.5),
                          ),
                        ],
                      ),
                    ),
                    // ),
                    // const Text(
                    //     'Oxford - It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s.'),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem.',
                      style: GoogleFonts.nunito(
                          fontSize: 16, color: Colors.black, height: 1.5),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.',
                        style: GoogleFonts.nunito(
                            fontSize: 16, color: Colors.black, height: 1.5)),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Wrap(
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
                  )
                ],
              ),
              CommentPopUp(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 55,
                  width: double.infinity,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/Vector.png'),
                      const Text(
                        ' 1252',
                        style:
                            TextStyle(fontSize: 10, color: Color(0xff717171)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Image.asset('assets/images/Vector (1).png'),
                      ),
                      const Text(
                        ' 252',
                        style:
                            TextStyle(fontSize: 10, color: Color(0xff717171)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Image.asset('assets/images/Vector (2).png'),
                      ),
                      const Text(
                        ' 25',
                        style:
                            TextStyle(fontSize: 10, color: Color(0xff717171)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Image.asset('assets/images/Vector (3).png'),
                      ),
                      const Text(
                        ' 45',
                        style:
                            TextStyle(fontSize: 10, color: Color(0xff717171)),
                      ),
                      Spacer(),
                      // CircularProgressIndicator(
                      //   backgroundColor: Colors.amber,
                      // )
                      Image.asset('assets/images/messagegroup.png'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
