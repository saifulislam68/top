import 'package:flutter/material.dart';
import 'package:login/screens/home_screen.dart';

enum SingingCharacter { lafayette, jefferson, NoComments }

class OnlineVote extends StatefulWidget {
  const OnlineVote({Key? key}) : super(key: key);

  @override
  State<OnlineVote> createState() => _OnlineVoteState();
}

class _OnlineVoteState extends State<OnlineVote> {
  @override
  Widget build(BuildContext context) {
    SingingCharacter? _character = SingingCharacter.lafayette;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network(
            "https://i.ytimg.com/vi/KHOzgacfSPE/maxresdefault.jpg",
            height: 150,
            fit: BoxFit.cover,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Text("Memorable celebration planded ."),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xffF4F0FF),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 12),
            child: Text(
              "Business",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [const Text('Yes'), Text('90%')],
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
            children: [const Text('No Comments'), Text('9%')],
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
