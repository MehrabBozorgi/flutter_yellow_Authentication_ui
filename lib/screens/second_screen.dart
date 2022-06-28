import 'package:flutter/material.dart';
import 'package:flutter_yellow_login/screens/third_screen.dart';
import 'package:flutter_yellow_login/style/colors.dart';

import '../style/text_styles.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    const desc =
        'YouTube rules and regulations are respectable and we must abide by them, because by using the law we can create a framework.';
    return Container(
      color: color1,
      child: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(width * 0.05),
                        child: Image.asset(
                          'youtube.png',
                          width: width * 0.3,
                        ),
                      ),
                      const Text(
                        'Yellow Youtube',
                        style: bigSizeStyle,
                      ),
                      const Text(
                        'www.youtube.com',
                        style: blackStyle,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    width: width,
                    decoration: BoxDecoration(
                      color: color1,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(width * 0.05),
                        topLeft: Radius.circular(width * 0.05),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, -5),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: height * 0.05),
                          const Text(
                            'Welcome',
                            style: bigSizeStyle,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: height * 0.02,
                            ),
                            child: const Text(
                              desc,
                              style: greyStyle,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: Size(width, height * 0.06),
                                    primary: color2,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(width),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => ThirdScreen(),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    'Sign In',
                                    style: whiteStyle,
                                  ),
                                ),
                              ),
                              SizedBox(width: width * 0.05),
                              Expanded(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: Size(width, height * 0.06),
                                    primary: color3,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(width),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    'Sign Up',
                                    style: blackStyle,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
