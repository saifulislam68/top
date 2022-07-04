import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:textfield_search/textfield_search.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          size: 30,
          color: Color(0xff717272),
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Search',
          style: GoogleFonts.lora(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            CupertinoSearchTextField(),
          ],
        ),
      ),
    );
  }
}
