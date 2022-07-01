import 'package:flutter/material.dart';

class Dummy extends StatelessWidget {
  const Dummy(
      {Key? key, this.title, this.imageUrl, this.description, this.onTap})
      : super(key: key);
  final String? title;
  final String? imageUrl;
  final String? description;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.deepPurple,
              // ignore: sort_child_properties_last
              child: Image.network('$imageUrl'),
              height: 70,
            ),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 12),
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
              Text(description!),
            ],
          )),
        ],
      ),
    );
  }
}
