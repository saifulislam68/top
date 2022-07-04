import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/screens/HomePages/home_screen.dart';

enum SingingCharacter { lafayette, jefferson, NoComments }

class OnlineVote extends StatefulWidget {
  const OnlineVote({Key? key}) : super(key: key);

  @override
  State<OnlineVote> createState() => _OnlineVoteState();
}

class _OnlineVoteState extends State<OnlineVote> {
  SingingCharacter? _character = SingingCharacter.lafayette;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(7),
            child: Image.asset(
              "assets/images/padma.png",
              height: 150,
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
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xffF8F8F8),
          ),
          child: ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [Text('Yes'), Text('90%')],
            ),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.lafayette,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
        ),
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [const Text('No'), Text('9%')],
          ),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.jefferson,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [Text('No Comments'), Text('9%')],
          ),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.NoComments,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
