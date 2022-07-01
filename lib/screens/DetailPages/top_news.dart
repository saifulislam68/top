import 'dart:ffi';
import 'dart:ui';

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
            // IconButton(
            //   onPressed: () {},
            //   icon: const Icon(
            //     Icons.notifications,
            //     color: Color(0xff717272),
            //   ),
            // ),
          ],
        ),
        body: SingleChildScrollView(
          child: Expanded(
            child: Column(
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  child: Image.network(
                    "https://i.ytimg.com/vi/KHOzgacfSPE/maxresdefault.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Positioned(child: GlassBox()),
                Container(
                  height: 400,
                  width: double.infinity,
                  child: Text(
                      'California - It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s.'),
                ),
              ],
            ),
          ),

          // child: Expanded(
          //   child: Stack(
          //     alignment: Alignment(-1, 1),
          //     children: [
          //       Positioned(
          //         height: 500,
          //         child: Image.network(
          //             'https://i.ytimg.com/vi/KHOzgacfSPE/maxresdefault.jpg'),
          //       ),
          //       // Container(
          //       //   decoration: const BoxDecoration(
          //       //     image: DecorationImage(
          //       //         image: NetworkImage(
          //       //           'https://i.ytimg.com/vi/KHOzgacfSPE/maxresdefault.jpg',
          //       //         ),
          //       //         fit: BoxFit.cover),
          //       //   ),
          //       //   // alignment: Alignment(-1, 1),
          //       //   // child: GlassBox(),
          //       // ),
          //       Positioned(
          //         child: GlassBox(),
          //       ),

          //       // Stack(
          //       //   alignment: Alignment(1, 1),
          //       //   children: [
          //       //     Container(
          //       //       height: 300,
          //       //       width: 300,
          //       //       color: Colors.black,
          //       //     )
          //       //   ],
          //       // )
          //     ],
          //   ),
          // ),
        ),
      ),
    );
  }
}
