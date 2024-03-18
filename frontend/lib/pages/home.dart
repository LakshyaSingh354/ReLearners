import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:re_learners/utils/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: const Text('ReLearners'),
          backgroundColor: primaryColor,
        ),
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: screenHeight * 0.03,
                  bottom: 0,
                  left: screenWidth * 0.03,
                  right: screenWidth * 0.03,
                ),
                child: const Text(
                  'Welcome to ReLearners!',
                  style: TextStyle(
                    fontSize: 33,
                    fontWeight: FontWeight.w800,
                    color: primaryColorDark,
                  ),
                ),
              ),
              Container(
                child: Lottie.asset(
                  'assets/animations/onboarding_animation.json',
                  height: 200,
                  width: 200,
                  repeat: true,
                  reverse: true,
                  frameRate: FrameRate.max,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                child: const Text(
                  'Please fill in your current jobs and skills to get started.',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                child: const TextField(
                  showCursor: true,
                  decoration: InputDecoration(
                    labelText: 'Current Job',
                    helperText: 'E.g. Software Developer',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor2,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor2,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColorDark,
                        width: 9,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                child: const TextField(
                  maxLines: null,
                  showCursor: true,
                  decoration: InputDecoration(
                    labelText: 'Skills',
                    helperText: 'E.g. Python, Java, Communication, Management',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor2,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor2,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColorDark,
                        width: 9,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.08),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/jobs');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor2,
                  elevation: 10,
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.1,
                    vertical: screenHeight * 0.02,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: const BorderSide(
                      color: primaryColorDark,
                      width: 1,
                    ),
                  ),
                ),
                child: const Text('Get Started',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ),
            ],
          ),
        )
      );
  }
}
