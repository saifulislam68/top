import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/screens/DetailPages/glass_box.dart';

class TopNews extends StatefulWidget {
  const TopNews({Key? key}) : super(key: key);

  @override
  State<TopNews> createState() => _TopNewsState();
}

class _TopNewsState extends State<TopNews> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
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
          leading: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
                onPressed: () {},
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
                      "https://i.ytimg.com/vi/KHOzgacfSPE/maxresdefault.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 270,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Colors.white,
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 70,
                    ),
                    const Text(
                        'California - It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s.'),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                        'Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature.'),
                    const SizedBox(
                      height: 10,
                    ),
                    Image.asset('assets/images/nightBridge.png'),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                        'Oxford - It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s.'),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                        'Release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem.'),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
