import 'package:flutter/material.dart';

class PopularPage extends StatelessWidget {
  const PopularPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/images/man.png'),
        // const CircleAvatar(
        //   radius: 60,
        //   backgroundImage: AssetImage('assets/images/man.png'),
        // ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Crypto",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff7F58FE),
                  ),
                ),
                const Text(
                  'Lorem Ipsum is simply dummy text of the printing Lorem Ipsum is simply dummy text of the printing and typesetting industry when an unknown ...',
                  style: TextStyle(fontSize: 13),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/Vector.png'),
                      const Text(
                        '1252',
                        style:
                            TextStyle(fontSize: 10, color: Color(0xff717171)),
                      ),
                      Image.asset('assets/images/Vector (1).png'),
                      const Text(
                        '252',
                        style:
                            TextStyle(fontSize: 10, color: Color(0xff717171)),
                      ),
                      Image.asset('assets/images/Vector (2).png'),
                      const Text(
                        '25',
                        style:
                            TextStyle(fontSize: 10, color: Color(0xff717171)),
                      ),
                      Image.asset('assets/images/Vector (3).png'),
                      const Text(
                        '45',
                        style:
                            TextStyle(fontSize: 10, color: Color(0xff717171)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
