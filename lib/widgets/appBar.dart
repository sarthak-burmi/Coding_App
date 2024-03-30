import 'package:assignment_1/widgets/colors.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  MyAppBar({
    required this.preferredSize,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return PreferredSize(
      preferredSize: preferredSize,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(14, 50, 10, 5),
          child: Row(
            children: [
              RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  style: TextStyle(
                    color: isDark ? white : black,
                    fontSize: 30,
                  ),
                  children: const [
                    TextSpan(
                      text: 'Code-Buddy',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    TextSpan(
                      text: '.',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          color: appBlue),
                    ),
                  ],
                ),
              ),
              // Text(
              //   pageTitle,
              //   style: Theme.of(context)
              //       .textTheme
              //       .headlineMedium!
              //       .copyWith(fontWeight: FontWeight.bold),
              // ),
              const Spacer(),
              CircleAvatar(
                backgroundColor: isDark ? lightGrey : white,
                child: Center(
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios_new),
                  ),
                ),
              ),
              // if (showNotificationIcon)
              // CircleAvatar(
              //   backgroundColor: isDark ? lightGrey : white,
              //   child: SvgPicture.asset(
              //     AppIcons.notificationBell,
              //     width: 26,
              //     height: 26,
              //     colorFilter: ColorFilter.mode(
              //       isDark ? white : black,
              //       BlendMode.srcIn,
              //     ),
              //   ),
              // ),
              // SizedBox(width: width * 0.04),
              // if (showCircleAvatarProfilePic)
              //   CircleAvatar(
              //     backgroundColor: isDark ? lightGrey : white,
              //     // foregroundImage: const AssetImage(""),
              //   ),
            ],
          ),
        ),
      ),
    );
  }
}
