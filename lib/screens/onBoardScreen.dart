import 'package:assignment_1/widgets/colors.dart';
import 'package:flutter/material.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: appBlue,
            ),
            height: height * 0.48,
            width: width,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: Image.asset(
                height: height * 0.50,
                "assets/images/onBoardPic.png",
              ),
            ),
          ),
          SizedBox(height: height * 0.030),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 80, 10),
            child: Column(
              children: [
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    style: TextStyle(
                      color: isDark ? white : black,
                      fontSize: 24,
                    ),
                    children: const [
                      TextSpan(
                        text: 'Code-Buddy',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                        ),
                      ),
                      TextSpan(
                        text: '.',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 50,
                            color: appBlue),
                      ),
                      TextSpan(
                        text: '\n\n',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'TEST YOUR\n',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      TextSpan(
                        text: 'CODING\n',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                        ),
                      ),
                      TextSpan(
                        text: 'SKILLS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 50,
                            color: appBlue),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.06),
              ],
            ),
          ),
          SizedBox(
            width: width * 0.9,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(width * 0.9, height * 0.066),
                backgroundColor: appBlue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/problemlist');
              },
              child: Text(
                "Next",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: white,
                      fontWeight: FontWeight.w600,
                      fontSize: 19,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
