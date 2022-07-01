import 'package:flutter/material.dart';
import 'package:loading_gifs/loading_gifs.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo1.png'),
            FadeInImage.assetNetwork(
                placeholder: cupertinoActivityIndicator,
                image:
                    "https://raw.githubusercontent.com/Codelessly/FlutterLoadingGIFs/master/packages/cupertino_activity_indicator_small.gif",
                placeholderScale: 5),

            // Image.asset(circularProgressIndicator, scale: 10),
            // FadeInImage.assetNetwork(
            //     placeholder: cupertinoActivityIndicatorSmall,
            //     image: "image_1.png"),
          ],
        ),
      ),
    );
  }
}
