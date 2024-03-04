import 'package:crezam_task/utils/colors.dart';
import 'package:crezam_task/views/home/home.dart';
import 'package:crezam_task/views/jobs/jobs.dart';
import 'package:crezam_task/views/messaging/messaging.dart';
import 'package:crezam_task/views/profile/profile.dart';
import 'package:flutter/material.dart';

class NavPage extends StatefulWidget {
  const NavPage({super.key});

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  late PageController controller;
  int currentIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mounted ? controller = PageController(initialPage: currentIndex) : null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        onPageChanged: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        children: const [
          Home(),
          Jobs(),
          Messaging(),
          Profile(),
        ],
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 0;
                  });
                  controller.animateToPage(currentIndex,
                      duration: const Duration(milliseconds: 800),
                      curve: Curves.linearToEaseOut);
                },
                icon: Icon(Icons.home,
                    color: currentIndex == 0 ? primaryColor : inactiveColor)),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 1;
                  });
                  controller.animateToPage(currentIndex,
                      duration: const Duration(milliseconds: 800),
                      curve: Curves.linearToEaseOut);
                },
                icon: Icon(Icons.workspace_premium,
                    color: currentIndex == 1 ? primaryColor : inactiveColor)),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 2;
                  });
                  controller.animateToPage(currentIndex,
                      duration: const Duration(milliseconds: 800),
                      curve: Curves.linearToEaseOut);
                },
                icon: Icon(Icons.message,
                    color: currentIndex == 2 ? primaryColor : inactiveColor)),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 3;
                  });
                  controller.animateToPage(currentIndex,
                      duration: const Duration(milliseconds: 800),
                      curve: Curves.linearToEaseOut);
                },
                icon: Icon(Icons.person,
                    color: currentIndex == 3 ? primaryColor : inactiveColor)),
          ],
        ),
      ),
    );
  }
}
