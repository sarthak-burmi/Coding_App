import 'package:assignment_1/models/codeModal.dart';
import 'package:assignment_1/screens/homePage.dart';
import 'package:assignment_1/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:assignment_1/widgets/appBar.dart';

class ProblemListPage extends StatelessWidget {
  const ProblemListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: MyAppBar(
        preferredSize: Size(width, height * 0.097),
        //pageTitle: "",
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: height * 0.01),
              const Row(
                children: [
                  Text(
                    " List of Problems - ",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(height: height * 0.01),
              for (int i = 0; i < CodeModel.problems.length; i++)
                Card(
                  elevation: 5,
                  color: isDark ? lightGrey : lightappBlue,
                  child: ListTile(
                    title: Text(
                      "Problem ${i + 1}: ${CodeModel.problems.keys.toList()[i]}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(
                            problemText: CodeModel.problems.values
                                .toList()[i]
                                .join('\n'),
                            problemName: CodeModel.problems.keys.toList()[i],
                            problemNumber: i + 1,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              SizedBox(height: height * 0.01),
            ],
          ),
        ),
      ),
    );
  }
}
