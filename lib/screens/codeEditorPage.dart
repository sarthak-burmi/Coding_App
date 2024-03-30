import 'package:assignment_1/widgets/colors.dart';
import 'package:code_text_field/code_text_field.dart';
import 'package:flutter/material.dart';
import 'package:highlight/languages/python.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CodeEditor1 extends StatefulWidget {
  @override
  _CodeEditorState createState() => _CodeEditorState();
}

class _CodeEditorState extends State<CodeEditor1> {
  CodeController? _codeController;
  String? savedCode;

  @override
  void initState() {
    super.initState();
    const source = ''' public class Main {
      static void myMethod() {
      System.out.println("I just got executed!");
      }
      public static void main(String[] args) {
      myMethod();
        }
      }
      ''';
    _codeController = CodeController(
      text: source,
      language: python,
    );
  }

  @override
  void dispose() {
    _codeController?.dispose();
    super.dispose();
  }

  void saveCode() {
    setState(() {
      savedCode = _codeController!.text;
    });
    FocusScope.of(context).unfocus();
  }

  void submitCode() {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: isDark ? darkappBackground : lightappBackground,
          title: const Text("Submitting Code..."),
          content: LoadingAnimationWidget.flickr(
              leftDotColor: appBlue, rightDotColor: black, size: 90),
        );
      },
    );

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pop();
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: isDark ? darkappBackground : lightappBackground,
            title: const Text("Code Submitted"),
            content: const Text("Your code has been submitted."),
            actions: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: appBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  "OK",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                ),
              ),
            ],
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "SUBMIT YOUR SOLUTION",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: isDark ? white : black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: CodeField(
                        controller: _codeController!,
                        textStyle: const TextStyle(fontFamily: 'SourceCode'),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.01),
              ],
            ),
          ),
        ),
        SizedBox(height: height * 0.02),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(width * 0.3, height * 0.05),
                backgroundColor: appBlue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: saveCode,
              child: Text(
                'Save',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: white,
                      fontWeight: FontWeight.w600,
                      fontSize: 19,
                    ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(width * 0.3, height * 0.05),
                backgroundColor: appBlue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: submitCode,
              child: Text(
                'Submit Code',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: white,
                      fontWeight: FontWeight.w600,
                      fontSize: 19,
                    ),
              ),
            ),
          ],
        ),
        savedCode != null ? Text('Saved Code: $savedCode') : Container(),
        SizedBox(height: height * 0.02),
      ],
    );
  }
}
