import 'package:flutter/material.dart';

import '../style/colors.dart';
import '../style/text_styles.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    const desc =
        'YouTube rules and regulations are respectable and we must abide by them.';
    return Container(
      color: color1,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: color1,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(width * 0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(
                              Icons.arrow_back_ios,
                              color: color2,
                            ),
                          ),
                          const Text(
                            'Register',
                            style: blackStyle,
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.08),
                      const Text(
                        'Sign In',
                        style: bigSizeStyle,
                      ),
                      SizedBox(height: height * 0.02),
                      const Text(desc, style: blackStyle),
                      SizedBox(height: height * 0.03),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  width: width,
                  // height: height,
                  decoration: BoxDecoration(
                    color: color3,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(width * 0.08),
                      topLeft: Radius.circular(width * 0.08),
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(-2, -5),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: height * 0.08),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.08),
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.blueGrey[50],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(width),
                              borderSide: BorderSide.none,
                            ),
                            hintText: 'Username',
                            hintStyle: hintStyle,
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.02),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.08),
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.blueGrey[50],
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(width),
                              borderSide: BorderSide.none,
                            ),
                            hintText: 'Password',
                            hintStyle: hintStyle,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(
                          right: width * 0.05,
                          top: height * 0.03,
                        ),
                        width: width,
                        child: const Text(
                          'Forget Password?',
                          style: blackStyle,
                        ),
                      ),
                      SizedBox(height: height * 0.03),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(width),
                          ),
                          primary: color2,
                          fixedSize: Size(
                            width * 0.8,
                            height * 0.07,
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Sign in',
                          style: whiteStyle,
                        ),
                      ),
                      SizedBox(height: height * 0.05),
                      Container(
                        width: width * 0.9,
                        height: height * 0.06,
                        padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                        decoration: BoxDecoration(
                          color: color3,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 5,
                              offset: Offset(2, 2),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(width),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'google.png',
                              width: width * 0.08,
                            ),
                            const Text(
                              'Continue with Google',
                              style: blackStyle,
                            ),
                            const Icon(Icons.arrow_right_rounded),
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      Container(
                        width: width * 0.9,
                        height: height * 0.06,
                        padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                        decoration: BoxDecoration(
                          color: color3,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 5,
                              offset: Offset(2, 2),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(width),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'facebook.png',
                              width: width * 0.08,
                            ),
                            const Text(
                              'Continue with Facebook',
                              style: blackStyle,
                            ),
                            const Icon(Icons.arrow_right_rounded),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
