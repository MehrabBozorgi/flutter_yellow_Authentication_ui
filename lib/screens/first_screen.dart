import 'package:flutter/material.dart';
import 'package:flutter_yellow_login/screens/second_screen.dart';

import '../style/colors.dart';
import '../style/text_styles.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      color: color3,
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(width * 0.05),
                      child: Image.asset(
                        'youtube.png',
                        width: width * 0.4,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SecondScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Yellow Youtube',
                        style: bigSizeStyle,
                      ),
                    ),
                    const Text(
                      'www.youtube.com',
                      style: blackStyle,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Image.asset(
                  'shape1.png',
                  width: width * 0.4,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Image.asset(
                  'shape2.png',
                  width: width * 0.6,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
