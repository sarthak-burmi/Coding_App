import 'package:flutter/material.dart';
import 'package:assignment_1/screens/codeEditorPage.dart';
import 'package:assignment_1/widgets/appBar.dart';
import 'package:assignment_1/widgets/colors.dart';

class HomePage extends StatefulWidget {
  final String problemText;
  final String problemName;
  final int problemNumber;
  const HomePage({
    Key? key,
    required this.problemText,
    required this.problemName,
    this.problemNumber = 1,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDark = false;
  bool showFullText = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: MyAppBar(
        preferredSize: Size(width, height * 0.097),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: isDark ? lightGrey : lightappBlue,
                ),
                width: width,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Text(
                              "${widget.problemNumber}: ${widget.problemName}",
                              style: TextStyle(
                                fontSize: 27,
                                fontWeight: FontWeight.w700,
                                color: isDark ? white : black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.02),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.problemText,
                            textAlign: TextAlign.justify,
                            maxLines: showFullText ? null : 9,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: isDark ? white : black,
                            ),
                          ),
                          TextButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(width * 0.1, height * 0.000),
                            ),
                            onPressed: () {
                              setState(() {
                                showFullText = !showFullText;
                              });
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                showFullText
                                    ? Text(
                                        "Show Less",
                                        style: TextStyle(
                                            color: isDark ? white : appBlue),
                                      )
                                    : Text(
                                        "Show More",
                                        style: TextStyle(
                                            color: isDark ? white : appBlue),
                                      ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),
              CodeEditor1(),
            ],
          ),
        ),
      ),
    );
  }
}
