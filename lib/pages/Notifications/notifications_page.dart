import 'package:flutter/material.dart';
import 'package:flutter_starter/components/displays/logged_appbar.dart';
import 'package:flutter_starter/components/navigation/app_drawer.dart';
import 'package:flutter_starter/components/navigation/bottom_navbar.dart';

import 'package:flutter_starter/pages/DashBoard/dash_board_page.dart';

import 'package:flutter_starter/pages/Profile/profile_page.dart';
import 'package:flutter_starter/utils/colours.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);
  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  int _currentIndex = 1;

  final List<Widget> _pages = [
    const DashBoardPage(), // Replace with your dashboard content widget
    const NotificationContent(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Scaffold(
        appBar: loggedAppBar(() => ()),
        drawer: AppDrawer(),
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        body: Column(
          children: [
            Expanded(
              child: _pages[_currentIndex], // Display the selected page
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationContent extends StatelessWidget {
  const NotificationContent({super.key});

  @override
  Widget build(BuildContext context) {
   return const Center(
        child: Text(
      "Notifications",
      style: TextStyle(fontSize: 20, color: primaryColor),
    ));
  }
}
