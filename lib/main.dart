import 'package:assignment_1/screens/homePage.dart';
import 'package:assignment_1/screens/onBoardScreen.dart';
import 'package:assignment_1/screens/problemList.dart';
import 'package:assignment_1/widgets/colors.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: lightappBackground,
      ),
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkappBackground,
        iconTheme: const IconThemeData(color: white),
      ),
      themeMode: ThemeMode.system,
      initialRoute: '/onBoardScreen',
      routes: {
        '/home': (context) => const HomePage(
              problemText: '',
              problemName: '',
            ),
        '/onBoardScreen': (context) => const OnBoardScreen(),
        '/problemlist': (context) => const ProblemListPage()
      },
    );
  }
}
